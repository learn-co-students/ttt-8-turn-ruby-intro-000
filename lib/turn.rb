board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input=user_input.to_i
  user_input-=1
end

def move(board,input_to_index,player="X")
    return board[input_to_index] =player
end

#####®®®®®####


# code your #valid_move? method here
def valid_move?(board,index)
    if index.between?(0,8) && !position_taken?(board,index)
        return true
    else
        return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
 if valid_move?(board,index) == false
   puts "Please enter 1-9:"
   user_input = gets.chomp
  else
    move(board,index,player="X")
    display_board(board)
end
end