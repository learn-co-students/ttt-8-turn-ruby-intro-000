def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i-1
end

def position_taken?(board, input)
  if board[input] == ""
    return false
  elsif board[input] == " "
    return false
  elsif board[input] == nil
    return false
  else board[input] == "X" || "O"
    return true
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    return true
  else position_taken?(board, index) == true || index.between?(0,8) == false
    return false
  end
end

def move(board, user_input, player = "X")
  board[user_input] = player
end

def turn(board)
        puts "Please enter 1-9:"
        input = gets.strip
        input_to_index(input)
end
