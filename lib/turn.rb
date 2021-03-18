require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index) == true)
    move(board, index, position = "X")
    puts display_board(board)
    else
      until (valid_move?(board, index) == true)
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
      end
    end
 end


def input_to_index(input)
  input = input.to_i
  input - 1
end



def valid_move?(board, index)
  if(position_taken?(board, index) == false && index >=0 && index <=8)
    return true
  elsif position_taken?(board, index) == true
    return false
  else
    return nil
  end
end

def move(board, index, position = "X")
  board[index] = position
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end
