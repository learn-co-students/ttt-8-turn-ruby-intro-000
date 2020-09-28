def display_board (board = " ")
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

 def valid_move? (board, index)
    if !position_taken?(board, index) && index.between?(0, 8)
      true
    else
      false
      end
 end

 def move (board, index, value = "X")
   board[index] = value
 end

 def input_to_index (input)
  input_to_index = input.to_i - 1
end



#TURN METHOD

 def turn (board)
   puts "Please enter 1-9:"

   input = gets.strip
   index = input_to_index(input)
   if valid_move?(board, index) == true
      move(board, index, "X")
      display_board(board)
  else
    turn (board)
   end
 end
