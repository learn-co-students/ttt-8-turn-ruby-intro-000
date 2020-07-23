def display_board(board)
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  puts "-----------"
  puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  puts "-----------"
  puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return true
  else
    return false
  end
end

def move(board, index, token="X")
  def update_array(array, index, value)
    array[index] = value
    return array
  end
  update_array(board, index, token)
end

def turn(board)
  # puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    puts "Please try again"
    turn(board)
  else
    move(board, index)
    display_board(board)
    puts "Please enter 1-9:"
    turn(board)
  end
end
