def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8)

    if !position_taken?(board,index)
      true
    else
      false
    end

  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, value='X')
  board[index] = value
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if index.between?(0, 8)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      puts "Invalid choice"
      turn
    end
  else
    puts "Invalid choice"
    turn(board)
  end
end
