def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end
def input_to_index(user_input)
   user_input.to_i - 1
end
def move(board, index, player)
   board[index] = player
end
def position_taken?(board, index)
   (board[index] != " ")
end
def turn (board)
 puts "Please enter 1-9:"
 num = gets.chomp
 index = input_to_index(num)
 if valid_move?(board, index)
   move(board, index, "X")
   display_board(board)
 else
   turn(board)
 end
end
