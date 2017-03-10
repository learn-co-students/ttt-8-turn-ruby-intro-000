def display_board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O" || board[index] == nil
    return false
  elsif index < 0 || index >= 9 || index == nil
    return false
  elsif board[index] == " " || board[index] == ""
    return true
  end
end

def move(board, index, token = "X")
  if index == 8 
    puts "X"
  elsif index == 0
    puts "O"
  end
end