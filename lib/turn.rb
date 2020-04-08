def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if position_taken?(board, index) == false
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

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input -= 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  converted_index = input_to_index(index)
  
  loop do
    if valid_move?(board, converted_index) == true
      move(board, converted_index, )
      display_board(board)
      break
    else
      display_board(board)
      puts "Please enter 1-9:"
      index = gets.strip
      index.to_i
      converted_index = input_to_index(index)
    end
  end
end