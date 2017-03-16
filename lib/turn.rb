board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)

  puts " #{board [0]} " "|" " #{board [1]} " "|" " #{board [2]} "
  puts "-----------"
  puts " #{board [3]} " "|" " #{board [4]} " "|" " #{board [5]} "
  puts "-----------"
  puts " #{board [6]} " "|" " #{board [7]} " "|" " #{board [8]} "

end

def valid_move?(board, index)
  if (0..8).include?(index) && position_taken?(board, index) == false
    true
  else
    false or nil
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    false
  else
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


def input_to_index(input)
  input.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
end

def turn(board)

  puts "Please enter 1-9:"
  user_input = gets.chomp

  index = input_to_index(user_input)

  if valid_move?(board, index)

    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    user_input = gets.chomp
  end
end
