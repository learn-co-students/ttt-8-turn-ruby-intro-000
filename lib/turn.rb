#valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
    return false;
  elsif index > 8 || index < 0
    return false;
  elsif !position_taken?(board, index)
    if(board[index] == nil)
      return false;
    else
      return true;
    end
  end
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false;
  elsif board[index] == "X" || board[index] == "O"
    return true;
  end
end

#display the board to the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input = user_input.to_i - 1;
  user_input;
end

#move method
def move(board, position, char="X")
  board[position] = char;
  board;
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip;
  index = input_to_index(index);
  if valid_move?(board, index)
    move(board, index);
  else
    until valid_move?(board, index)
      puts "Please enter 1-9:";
      index = gets.strip;
      index = input_to_index(index);
    end
    move(board, index);
  end
  puts "Moved X to #{index}!"
  display_board(board);
end
