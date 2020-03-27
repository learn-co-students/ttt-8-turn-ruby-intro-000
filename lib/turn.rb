
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(num)
  num.to_i - 1
end


def move(array, index, value="X")
  array[index] = value
end


def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end

end


def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil )
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  end

end

def turn (board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn (board)
  end

end
