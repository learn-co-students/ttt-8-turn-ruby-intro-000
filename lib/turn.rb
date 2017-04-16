
#Display updated game board to player
def display_board(board)
    counter = 0
    line_break = "-----------"
  while counter <=3 do
    puts " #{board[counter]} | #{board[(counter + 1)]} | #{board[(counter +2)]} "
	  puts line_break
	  counter += 3
  end
    puts " #{board[counter]} | #{board[(counter + 1)]} | #{board[(counter +2)]} "
end

#Check if the chosen position is already taken by a move
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

#Check if player move falls within 0-8 index & if position_taken == false
def valid_move? (board, index)
  if position_taken?(board, index) == false && (index).between?(0,8)
    return true
  else
    return false
  end
end

#convert input to integer and then subtract one
def input_to_index(index)
  return index.to_i - 1
end

#move
def move(board, index, player = "X")
  return board[index] = player
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
  else
    puts "Your move is invalid.  Please try again"
    display_board(board)
    turn(board)
  end
end
