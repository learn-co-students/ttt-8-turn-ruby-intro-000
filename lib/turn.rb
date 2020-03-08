board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(users_input)
  index = users_input.to_i
  index -= 1
  return index
end
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      return false
    else
      return true
    end
  end
  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end
  if (position_taken?(board, index)) == false && (on_board?(index)) == true
    return true
  else
    return false
  end
end
def move(board, index, user_marker="X")
  board[index] = user_marker
  return board
end
def turn(board)
  puts "Please enter 1-9:"
  users_input = gets.chomp
  index = input_to_index(users_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
