def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  getindex = input_to_index(index)
    while valid_move?(board, getindex) == false
      puts "Please put a valid number"
      index = gets.strip
      getindex = input_to_index(index)
    end

    if(board[getindex] == " ")
      board[getindex] = "X"
    end
    display_board(board)
end

def valid_move(index)
  if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 7 || index == 8
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def valid_move?(board, index)
  if valid_move(index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    else
      false
    end
  else
    false
  end
end

def input_to_index(input)
  user = input.to_i
  user -= 1
end

def move(array,index ,value="X")
array[index] = value
end
