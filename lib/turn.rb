def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  integer = input.to_i
  integer - 1
end

def move(array, index, value="X")
  array[index] = value
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else array [index]
    return true
  end
end

def valid_move?(array, index)
  if index.between?(0, 8) && position_taken?(array, index) == false
    return true
  end
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
      break
    end
  end
end
