def position_taken?(board, index)
  check = board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
!(position_taken?(board, index)) && index.between?(0, 8)
end
