def display_board(board)
   puts" #{board[0]} | #{board[1]} | #{board[2]} "
   puts"-----------"
   puts" #{board[3]} | #{board[4]} | #{board[5]} "
   puts"-----------"
   puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

 board=["  ","  ","   ","   ","  ","   ","  ","  ",""]

def input_to_index(user_input)

  index = user_input.to_i - 1

end

def position_taken?(board, index)

!(board[index].nil? || board[index] == " "|| board[index] == "")

end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
    else
      false
  end
end

def move(board, index, value="X")
  board[index]=value

end

# def gets(user_input)
#   user_input = gets.strip

#end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = user_input.to_i - 1
  input_to_index(user_input)
#  valid_move?(board, 0)

  if valid_move?(board, index)
    move(board, index, value="X")
    display_board(board)
    else
      turn(board)
      end
    end
