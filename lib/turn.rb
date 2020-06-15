board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1
  return new_user_input
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false 
  else 
    return true 
  end
end

def valid_move?(board, position)
	spot = position.to_i - 1
	if !position_taken?(board, spot) && spot.between?(0,8)
		false 

	elsif 
		false

	end

end

def valid_move?(board, position)
	spot = position.to_i - 0
	if !position_taken?(board, spot) && spot.between?(0,8)
		true  

	elsif 
		false

	end

end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
  	false

  else
  	true

  end

end 
def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end