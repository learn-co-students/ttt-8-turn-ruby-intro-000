def turn(board)
  puts  "Please enter 1-9:"
  user_input = gets.strip

  m = input_to_index(user_input)

  if valid_move?(board, m) == false
    puts  "Please enter 1-9:"
    m = user_input = gets.strip
  else
    move(board, m)
  end
  display_board(board)




end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
 input.to_i - 1
end

def move(board, index, value = "X")
    board[index] = value
end

def valid_move?(board, index_number)
  if position_taken?(board, index_number)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index_number)
  position = board[index_number]
  if (position == " " || position == "" || position == nil) && index_number.between?(0, 9)
    true
  elsif position == "X" || position == "O"
    false
  else
    false
  end
end
