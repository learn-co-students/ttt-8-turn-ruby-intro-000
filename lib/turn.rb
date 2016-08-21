def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "--------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " --------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)

  if index >= 0 && index < board.length
    if !(position_taken?(board,index))
      return true
    end
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, player)
    board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  if !(valid_move?(board, index))
      turn(board)
  else
    move(board, index, "X")
    puts "Please enter 1-9:"
    display_board(board)
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
turn(board)
