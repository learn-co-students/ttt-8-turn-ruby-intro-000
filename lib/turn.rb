def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  return board[index] != " "
end

def valid_move?(board, index)
  if index.between?(0, 8)
    return !position_taken?(board, index)
  else
    return false
  end
end

def input_to_index(index)
  return index.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      valid = true
      break
    end
  end
end
