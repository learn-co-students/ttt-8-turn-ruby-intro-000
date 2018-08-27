def display_board(arr)
puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
puts "-----------"
puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
puts "-----------"
puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def input_to_index(input)
  index = (input.to_i - 1)
end


def valid_move?(board, index)
  if index.to_i.between?(0, board.length) && !position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
 if board[index] == "" || board[index] == " " || board[index] == nil
   false
 else
   true
 end
end

def move(board, index, marker = "X")
  board[index] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  numb = input_to_index(num)
  if valid_move?(board, numb) == true
      move(board, numb, "X")
      display_board(board)
  else
    puts "Invalid number, try again:"
    turn(board)
  end
end
