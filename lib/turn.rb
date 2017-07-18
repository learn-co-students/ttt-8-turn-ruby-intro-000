#turn method
def turn(board)
  puts "Please enter 1-9:"
  #gets the user input
  index = gets.chomp
  puts "you entered #{index}"
  #calls the input_to_index method
  index = input_to_index(index)
  #validates the input
  if index.between?(0,8) == true && valid_move?(board, index) == true
    true
  else
    while index.between?(0,8) != true do
      puts "Please reenter a number between 1-9:" #asks user for a failed input
      index = gets.chomp
      index = input_to_index(index)
    end
  end
  #asks user for a failed input
  #make a valid move
  move(board,index)
  #display the updated board after a correct move
  display_board(board)
end

# display_board method
def display_board (board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#valid_move method
def valid_move?(board,index)
  if index.between?(0,8)
    if board[0] == " " && board[1] == " " && board[2] == " "&&
      board[3] == " " && board[4] == " " && board[5] == " " &&
      board[6] == " " && board[7] == " " && board[8] == " "
      return true
    else
      if position_taken?(board,index) == false
        return true
      else
        return false
      end
    end
  end
end


#position_taken? method
def position_taken?(board, index)
    if board[index] == " "
      false
    elsif board[index] == ""
      false
    elsif board[index] == nil
      false
    else board[index] == "X" || board[index] == "O"
      true
    end
end

#input_to_index and move method here!
def input_to_index(number)
  index = number.to_i
  index = index - 1
end

#move method
def move(board,index,piece ="X")
  board[index] = piece
end
