require '../lib/tic_tac_toe'

describe TicTacToe do
  subject(:tictactoe) { described_class.new }

  describe 'move' do
    context 'when a move has been made' do
      it 'it updates the board' do
        expect{ tictactoe.move(0) }.to change{ tictactoe.board[0] }.from(' ').to('X')
      end
    end
  end

  describe 'position_taken?' do
    before do
      tictactoe.board[0] = 'X'
    end

    context 'when the position has already been taken' do
      it 'returns true' do
        expect(tictactoe.position_taken?(0)).to be true
      end
    end

    context 'when the position has not been taken' do
      it 'returns false' do
        expect(tictactoe.position_taken?(1)).to be false
      end
    end
  end

  describe 'valid_move?' do
    context 'when the move is valid' do
      it 'returns true' do
        expect(tictactoe.valid_move?(4)).to be true
      end
    end

    context 'when the move is invalid' do
      it 'returns false' do
        expect(tictactoe.valid_move?(15)).to be false
      end
    end
  end

  describe 'turn_count' do
    context 'when positions have been taken' do
      before do
        tictactoe.board[5] = 'X'
        tictactoe.board[6] = 'O'
      end

      it 'increments the taken counter' do
        expect(tictactoe.turn_count).to eq(2)
      end
    end

    context 'when no positions have been taken' do
      it "doesn't increment the counter" do
        expect(tictactoe.turn_count).to eq(0)
      end
    end
  end
end
