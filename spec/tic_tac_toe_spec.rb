require '../lib/tic_tac_toe'

describe TicTacToe do
  subject(:tictactoe) { described_class.new }

  describe 'move' do
    it 'updates the board with the new move' do
      expect{ tictactoe.move(0) }.to change{ tictactoe.board[0] }.from(' ').to('X')
    end
  end

  describe 'position_taken?' do
    before do
      tictactoe.board[0] = 'X'
    end

    it 'returns true if position is taken' do
      expect(tictactoe.position_taken?(0)).to be true
    end

    it 'returns false if position is not taken' do
      expect(tictactoe.position_taken?(1)). to be false
    end
  end

  describe 'valid_move?' do
    it 'returns true if the move is valid' do
      expect(tictactoe.valid_move?(4)).to be true
    end
    it 'returns false if the move is false' do
      expect(tictactoe.valid_move?(15)).to be false
    end
  end
  
end
