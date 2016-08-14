#!/usr/bin/env ruby
# code your #valid_move? method here
def valid_move?(board, index)
  return !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board.length <= index or index < 0
      return true
    end

    element = board[index]
    case element
    when "X", "O"
      return true
    end

    return false
end

def display_board(board)
  row_length = 3
    for i in 0..board.length - 1
      print " " + board[i].to_s + " "
      remainder = (i + 1) % row_length
      if remainder > 0 and i < board.length - 1
        print "|"
      end

      if remainder == 0 and i < board.length - 1
        print "\n-----------\n"
      end
    end
    print "\n"
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, token='X')
    board[index] = token
end

def get_index()
    puts "Please enter 1-9:"
    input = gets.strip
    return input_to_index(input)
end

def turn(board)
  index = get_index()
  until valid_move?(board, index)
    index = get_index()
  end

  move(board, index)

  display_board(board)
end
