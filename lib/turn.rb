#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(input)
  index = input.to_i - 1
end

#position_taken?
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

#valid_move?
def valid_move?(board, index)
  if !position_taken?(board,index) && index.between?(0,8)
    true
  else
    false
  end
end

#move
def move(board, index, char = "X")
  board[index] = char
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Sorry, that is not a valid move. Try again. Enter 1-9"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index)
  display_board(board)

end
