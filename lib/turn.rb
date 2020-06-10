# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board, index)

  current_board_player = board[index]

  if (current_board_player == " ") || (current_board_player == "")
    false
  elsif current_board_player == "X"
    true
  elsif current_board_player == "O"
    true
  else false
  end
end

def valid_move? (board, index)

  valid_index = index.between?(0,8)
  if valid_index && ( position_taken?(board,index) == false )
    true
  else false
  end
end


def input_to_index(input)
  index = input.to_i
  index = index - 1
end


def ask_player_choice()
    puts "Please enter 1-9:"
    input = gets.strip.to_i
end

def update_array_at_with(board, index, player = "X")
    board[index] = player
    board
end

def move(board, index, player = "X")

  board = update_array_at_with(board, index, player)

end

def turn(board)
  player = "X"
  index = input_to_index(ask_player_choice())
  if valid = valid_move?(board, index)
    move(board, index, player)
    display_board(board)
  else
    turn(board)
  end
end
