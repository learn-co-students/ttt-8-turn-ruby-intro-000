#DISPLAY BOARD

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#VALID MODE POSITION TAKEN

def valid_move?(board, index)

  if index.between?(0,8) && position_taken?(board, index) == false

    true

  else

    false

  end
end

def position_taken?(board, index)

 if board[index] == "X" || board[index] == "O"

   true

 else board[index] == "" || " " || nil

   false

 end
end

#INPUT INDEX MOVE

def input_to_index(user_input_original)

  user_input_original.to_i - 1

end

def move(board, index, character = "X")

  board[index] = character

end

#TURN

def turn(board)

  puts "Please enter 1-9:"

  user_input = gets.strip

  user_input = input_to_index(user_input)

 if valid_move?(board, user_input) == true

  move(board, user_input, "X")
  display_board(board)

 else

 turn(board)

 end

end
