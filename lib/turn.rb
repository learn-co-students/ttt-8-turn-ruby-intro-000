#build structure of the board
puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

#display_board method
def display_board
   puts row = ["   " "|" "   " "|" "   "]
   puts separator = "-----------"
   puts row
   puts separator
   puts row
 end

#board and position
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#change player input in to integer
def input_to_index(user_input)
   user_input.to_i - 1
end

#move
def move(board, index, player)
   board[index] = player
end

#players taking turns
def turn_count(board)
  counter = 0
  board.each do |space|
    if space == "X" || space == "O"
      counter +=1
  end
end
return counter
end

#determine current player
def current_player(board)
  if turn_count(board)%2 ==0
    current_player = "X"
  else
    current_player = "O"
end
return current_player
end

# code your valid_move? method here
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
        puts "this is a valid move"
      return true
    else
      return false
   end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  !(board[index].nil? || board[index] == " ")
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)
  token = current_player(board)

#check for validation
  if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end
