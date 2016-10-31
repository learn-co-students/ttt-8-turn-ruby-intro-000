def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def move(board,index,char = "X")
  board[index] = char
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board,index)
  if index.between?(0,8) && !(position_taken?(board,index))
    true
  else false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  index_num = index
  if board[index_num] == " " || board[index_num] == "" || board[index_num] == nil
    false
  elsif board[index_num] == "X" || board[index_num] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  input_num = input_to_index(input)
    if valid_move?(board, input_num)
      move(board, input_num, "X")
      display_board(board)
    else turn(board)
    end
end
