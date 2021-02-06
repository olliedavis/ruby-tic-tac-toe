require '../lib/tic_tac_toe'

describe TicTacToe do
  describe '#valid_move?' do
    subject (:tictactoe) { described_class.new }
    it 'returns true if the move is valid' do
      expect(tictactoe.valid_move?(4)).to eq(true)
    end
    it 'returns false if the move is false' do
      expect(tictactoe.valid_move?(15)).to eq(false)
    end
  end
end
