require_relative "../lib/tic_tac_toe.rb"

describe './lib/tic_tac_toe.rb' do
  describe '#turn' do
    it 'asks the user for input' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")

      turn(board)
    end    

    it 'validates the input correctly' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")
      expect(self).to receive(:valid_move?).with(board, "1").and_return(true)

      turn(board)      
    end

    it 'asks for input again after a failed validation' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("invalid")
      expect(self).to receive(:gets).and_return("1")

      turn(board)      
    end

    it 'makes valid moves' do
      board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

      allow($stdout).to receive(:puts)

      expect(self).to receive(:gets).and_return("1")

      turn(board)

      expect(board).to match_array(["X", " ", " ", " ", " ", " ", " ", " ", " "])
    end
  end
end