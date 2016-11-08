def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  while !input.between?(1, 9)
    puts "Invalid! Enter a number between 1-9!"
    input = gets.to_i
  end
  position = input_to_index(input)
  if valid_move?(board, position)
    move(board, position, character = "X")
    display_board(board)
  else
    puts "Sorry, that spot is taken! Try again!"
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.between?(0, 8)
  else
    return false
  end
  if board[position] == "X" || board[position] == "O"
    return false
  elsif board[position] == "" || board[position] == " "
    return true
  end
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end
