def display_board( board )
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index( input )
  input = input.to_i
  input = input - 1
end

def move( board, index, char = "X")
  board[index] = char
end

def position_taken?( board, index )
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?( board, index )
  if index < 0 || index > 8
    return false
  end
  if position_taken?( board, index )
    return false
  else position_taken?( board, index ) == false
    return true
  end

end

def turn( board )
  puts "Please enter 1-9:"

  index = input_to_index( gets.strip )

  if valid_move?( board, index ) == true
    move( board, index, "X" )
    display_board( board )

  elsif valid_move?( board, index ) == false
    display_board( board )
    turn( board )
  end

end
