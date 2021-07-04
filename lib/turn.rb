def display_board (board)
    puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

# code your #valid_move? method here
def valid_move? (board, index)
  isTaken = position_taken?(board , index)
  if index.between?(0, 8)
    if isTaken
      return false
    else
      return true
    end
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move (board, index, character="X")
  index = index.to_i
  board[index.to_i] = character.to_s
end

def input_to_index (user_input)
  user_input = user_input.to_i
  user_input = user_input-1
end

def turn(board)
  isValid = false
  until isValid
    puts "Please enter 1-9:"
    user_input = gets.strip()
    index = input_to_index(user_input)
    isValid = valid_move?(board, index)
  end

  move(board, index)

  display_board(board)
end
