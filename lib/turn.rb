def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true

 else
   return false

 end
end



def position_taken?(board, index)
  if (board[index] == " " || board[index] == "")
    return false
  end

  if (board[index] == "X" || board[index] == "O")
    return true
  end

  if (index != true)
    return false
  end
end



def input_to_index(user_input)
  number = user_input.to_i
  converted_number = number - 1
end



def move (board, index, char = "X")
  board[index] = char

end



def turn(user_input)
 
 puts "Please enter 1-9:"
 input = gets.strip
 value = input_to_index(input)
 #check = valid_move?(input)
 
 
end
