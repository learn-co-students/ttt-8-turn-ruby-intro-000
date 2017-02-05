def collect_input
  puts "Please enter 1-9:"
  input = gets.strip
  return input_to_index(input)
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  index = collect_input
  until index.between?(0,8) && valid_move?(board,index)
    puts "invalid"
    index = collect_input
  end
  move(board,index,"X")
  display_board(board)
end

def valid_move?(board,index)
  if index.between?(0, 8) && !position_taken?(board,index)
      true
    else
      false
    end
end

def position_taken?(board,index)
  if (board[index] == " ") || (board[index] == "")
    return false
  elsif board[index] == nil
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end

def move(board,index,player_char="X")
  board[index] = player_char
end

def display_board (board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end
