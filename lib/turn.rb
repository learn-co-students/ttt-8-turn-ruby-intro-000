# Display the Tic Tac Toe Board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Take the input and convert it to an array index value

def input_to_index(input)
  input.to_i - 1
end

# Is the position already taken?

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

# Is this a valid move?

def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif index.between?(0, 8) == false
    false
  else
    true
  end
end

# Add the move into the display_board array

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)

    puts "Please enter 1-9:"
    input = gets.strip

    index = input_to_index(input)

    if valid_move?(board, index) == false
      puts "Please enter 1-9:"
      input = gets.strip

      index = input_to_index(input)
    else
      move(board, index)
      display_board(board)
    end
  end
