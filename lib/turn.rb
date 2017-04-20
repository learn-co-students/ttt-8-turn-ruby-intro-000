def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  if valid_move?(board, index) == true
    move(board, index)
  else
    until valid_move?(board,index) == true
      puts "Please input 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
      valid_move?(board, index)
    end
    move(board,index)
  end
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = "-----------"
  row3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row4 = "-----------"
  row5 = " #{board[6]} | #{board[7]} | #{board[8]} "

  puts row1
  puts row2
  puts row3
  puts row4
  puts row5
end

def move(board, index, player = "X")
  board[index] = "#{player}"
end


def valid_move?(board, index)
  if index.between?(0, 8) == false
    false
  elsif position_taken?(board, index) == false
    true
  elsif position_taken?(board, index) == true
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
