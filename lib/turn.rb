#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index method
def input_to_index (user_input)
  index = user_input.to_i - 1
end

#move method
def move (board, index, value = "X")
  board[index] = value
end

# re-defined #position_taken? method (helper method for #valid_move)
def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
     false
  end

  if (board[index] == "X") || (board[index] == "O")
     true
  end
end

#valid_move method
def valid_move?(board, index)
  !position_taken?(board,index) && index.between?(0,8)
end

#turn method
def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  m = valid_move?(board, index)
    if m == true
      move(board, index)
    else
      turn(board)
        until m == true
          puts "Please enter 1-9:"
          input = gets.strip
          index = input_to_index(input)
          m = valid_move?(board, index)
          move(board, index)
        end
    end
end
