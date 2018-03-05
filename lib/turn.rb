def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board,index)
  board[index] != " "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,index,turn)
  board[index] = turn
  board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = input_to_index(gets)
  #puts "Inputted: #{user_input}"
  if valid_move?(board,user_input)
    display_board(move(board,user_input,"X"))
  else
    puts "Invalid Move"
    turn(board)
  end
end
