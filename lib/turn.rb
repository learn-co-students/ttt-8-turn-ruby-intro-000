def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def move(board , moves, char = "X")
  board[moves] = char
  display_board(board)
end

def input_to_index(string)
  string.to_i - 1
end

def position_taken?(board , index)
  return true if board[index] == "X" || board[index] == "O"
  false
end
def valid_move?(board , index)
  return false unless index < 9 && index >= 0
  return true unless position_taken?(board,index)

  false
end

def turn(board)
  
  while true
      puts "Please enter 1-9:"
      move_pos = input_to_index(gets.chomp)
      break if valid_move?(board,move_pos)
  end
  move(board ,move_pos)
  display_board(board)
end
