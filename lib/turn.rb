def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_user_input = user_input.to_i - 1
end

# Check the numbers if they are bewteen 1 and 9 because -1 would be valid but not for the test because it gets the last ele of an array
def check_valid_num(index)
  (0..8).any?(index)
end

def valid_move?(board, index)
  return false if check_valid_num(index) == false

  if board[index] == " "
    return true
  elsif board[index] == "X" || board[index] == "O"
    return false
  end
end

def move(board, user_input, token="X")
  board[user_input] = token
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    converted_ui = input_to_index(user_input)

    until valid_move?(board, converted_ui)
      puts "Please enter 1-9:"
      user_input = gets.strip
      converted_ui = input_to_index(user_input)
    end

    move(board, converted_ui, "X")
    display_board(board)
end
