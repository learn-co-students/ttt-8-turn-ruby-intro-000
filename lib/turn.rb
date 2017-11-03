def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
   index=input_to_index(user_input)
   while valid_move?(board,index) == false
     user_input = gets
     index=input_to_index(user_input)
   end
   move(board,index,"X")
   display_board(board)

 end

 def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def valid_move?(board, index)
   if index.between?(0,8)
     if board[index]==" " || board[index]==""
       true
     else
       false
     end
   else
     false
   end
 end

 def move(board, index, player)
   board[index] = player
 end

 def input_to_index(user_input)
   index = user_input.to_i-1
 end
