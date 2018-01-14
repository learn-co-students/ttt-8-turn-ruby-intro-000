#display board
def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0, 8)
    true
  else false
  end
end


 def position_taken?(board,index)
   if board[index] == " "
     false
   elsif board[index] == ""
     false
   elsif board[index] == nil
     false
   elsif board[index] == "X"
     true
   else board[index] == "O"
     true
   end
 end

 def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 # code your input_to_index and move method here!
 def input_to_index(input = "1")
  input.to_i - 1
 end

 # move method
 def move(board, index, char = "X")
   board[index] = char
 end

 def turn(board)
    puts "Please enter 1-9:"  #get the users move
    input = gets.strip
    input = input_to_index(input)    # convert string to int -1

    until valid_move?(board, input) == true
      puts "Please enter 1-9:"
      input = gets.strip
      input =  input_to_index(input)
    end

  move(board, input)

  display_board(board)

end
