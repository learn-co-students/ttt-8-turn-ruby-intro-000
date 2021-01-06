def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index < board.length &&
    (board[index] == " " || board[index] == "" || board[index] == nil)
    return true
  end
  return false
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Invalid move! Please enter a number from 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index, "X")
  display_board(board)
end
