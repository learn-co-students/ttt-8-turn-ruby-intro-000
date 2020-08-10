index = 0
input = 0

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    else
      false
    end
  else
    false
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  else
    puts "This is not a valid move"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  if valid_move?(board, index = input_to_index(gets.chomp))
    move(board, index)
    display_board(board)
  else
    puts "Please enter a valid move"
    display_board(board)
    turn(board)
  end
end

def input_to_index(input)
  return input.to_i - 1
end
