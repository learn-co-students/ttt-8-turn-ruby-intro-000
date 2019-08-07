
def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken? (board, index)
  index = index.to_i
  if board[index].nil?
    true
  elsif board[index].upcase == "X" or board[index].upcase == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
      true
    end
  end
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  move = false
  until move == true
    puts "Please enter 1-9:"
    turn = input_to_index(gets.strip)
    if valid_move?(board, turn)
      move = true
      board[turn]= "X"
      display_board(board)
    end
  end
end
