def valid_move?(board, index)
  return !position_taken?(board, index) && inbounds?(index)
end
def position_taken?(board, index)
  return !(board[index] == "" || board[index] == " " || board[index] == nil)
end
def inbounds?(index)
  return index >= 0 && index < 9
end
