#!/usr/bin/env ruby

require_relative '../lib/turn'

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets)
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, string)
  board[index] = string
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index.between?(0, 8) &&  position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end
