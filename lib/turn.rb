
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0
    return false
  elsif board[index] == "O" || board[index] == "X"
    return false
  elsif board[index] == " "
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def input_to_index(input)
  input.to_i - 1
end


def turn(board)
  valid = false
  while !valid do
  puts "Please enter 1-9:"

  # get input
  input = gets.strip
  # convert input to index
  input_cleaned = input_to_index(input)

  # if index is valid
  if (valid_move?(board, input_cleaned))
    # make the move for input
    move(board, input_cleaned)
    display_board(board)
    valid = true
  # else
  else
    # ask for input again until you get a valid input
    puts "That was invalid."
  # end
  end
end

end
