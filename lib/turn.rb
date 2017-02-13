
def display_board(array)
  line = "-----------"
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts line
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts line
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end

def input_to_index(num)
  int = num.to_i
  ind = int - 1
end

def move(array, i, value = "X")
  array.delete_at(i)
  array.insert(i, value)
  display_board(array)
end

def valid_move?(board, i)
  if i > 8 || i < 0
    false
  elsif board[i] != " "
    false
  elsif board[i] == " "
    true
  end
end
