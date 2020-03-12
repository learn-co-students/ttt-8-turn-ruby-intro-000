#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move?(board, index)
		if position_taken?(board, index) == false && index.between?(0,8) == true
		    true
	  elsif position_taken?(board, index) == true
		    false
	  elsif index.between?(0, 8) == false
		    false
	  end
end

#position_taken?
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end

#input_to_index
def input_to_index(user_input)
converted_input =  user_input .to_i - 1
end

#move
def move(board, converted_input, user_input = "X")
  board[converted_input] = user_input
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, user_input = "X")
    display_board(board)
  else
    turn(board)
  end

end
