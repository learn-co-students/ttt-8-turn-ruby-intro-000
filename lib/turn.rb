def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (number)
  index = number.to_i - 1
  return index
end

  
def valid_move? (board, index)
  if index.between?(0, 8)
    if board[index] == "" || board[index] == " "
      return true
    elsif board[index] == "X" || board[index] == "O"
      return false
    end
  else
    return false
  end
end

def move (board, index, token = 'X')
  board[index] = token
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board (board)
  elsif valid_move?(board, index) == false
    turn (board)
  end
end