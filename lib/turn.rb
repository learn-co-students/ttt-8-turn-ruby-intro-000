require "pry"

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
 end
end

def display_board(zeboard)
  puts " #{zeboard[0]} | #{zeboard[1]} | #{zeboard[2]} "
  puts "-----------"
  puts " #{zeboard[3]} | #{zeboard[4]} | #{zeboard[5]} "
  puts "-----------"
  puts " #{zeboard[6]} | #{zeboard[7]} | #{zeboard[8]} "
end

def valid_move?(board, index)
	if !position_taken?(board, index) && index.between?(0,8)
		true

	else
		false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
  	false

  else
  	true

  end
end

def input_to_index(integer)
  integer.to_i-1
end

def move(board, position, value = "X")
  board[position] = value
end
