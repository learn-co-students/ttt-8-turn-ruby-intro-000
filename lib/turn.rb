require "pry"

board = [" "," "," "," "," "," "," "," "," ",]

def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1 
end

def valid_move?(board,converted_input)
  if converted_input<0 || converted_input >8 || board[converted_input] == "X" || board[converted_input] == "0"
    puts "Can't input this number. Please try again"
    false
  else board[converted_input] == " " || board[converted_input] == ""
    true 
  end
end

def move(array,index,value="X")
  array[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board,index) 
    move(board,index,"X")
    display_board(board)
  else 
    turn(board)
    
  end
end