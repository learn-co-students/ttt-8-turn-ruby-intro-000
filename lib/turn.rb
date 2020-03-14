
board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 index = user_input.to_i - 1
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

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end


end

def move(array, index, first_player = "X")
  array[index] = first_player
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
 if valid_move?(board, index) == true
   #user_input = gets.to_i
   #index = input_to_index(user_input)
   #elsif valid_move?(board, index) == true
  move(board, index)
  display_board(board)
  else
  #puts "ok"
  turn(board)
 end
 end
