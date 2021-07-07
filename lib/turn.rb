def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)

  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else
      true
    end
  end

  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end

end
def input_to_index(input)
  output = input.to_i
  output -= 1
  return output
end

def move(board, index, output = "X")
  board[index] = output
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
    puts "Try Again. Please enter a number between 1-9:"
  end
end
