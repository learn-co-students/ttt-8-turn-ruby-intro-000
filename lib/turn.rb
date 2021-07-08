#The first thing it needs to do is load our library of methods defined in lib/turn.rb.
require 'pry'


## that was a doozy, I had a recurssive turn(board) in there to get to the next turn.
## in the future we will write a new method to handle turn taking 
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  ## input_to_index(input)
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
  ##    binding.pry
  ##    turn(board)
    else
      display_board(board)
      turn(board)
    end
end





=begin

## this was all wrong.  I cant use the counter due to it being reset, and got stuck in a loop
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  index = input_to_index(input)
  position_taken?(board, index)
  valid_move?(board, index)

  counter = 0


    if counter < 9 && position_taken?(board, index) == false && valid_move?(board, index) == true
      move(board, index, value = "X")
      display_board(board)

      while counter <= 8
        binding.pry
        counter = counter + 1
        turn(board)
      end
    end

    if counter == 9
      puts "good game"
    end

##    if counter < 9 && position_taken?(board, index) == true || valid_move?(board, index) == false
##      puts "Invalid move, please select again"
##      turn(board)
##    end


end

=end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

## use nested if statements instead of logic threads ?

def valid_move?(array, index)
  if index.between?(0,8)
    if position_taken?(array, index) == false
    true
    end
  else
    false
  end
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == ""
    false
  elsif array[index] == nil
    false
  else
    true
  end
end


def input_to_index(input)
  index = input.to_i - 1
end


def move(array, index, value = "X")
  array[index] = value
end
