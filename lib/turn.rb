def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      return false
    elsif position_taken?(board, index) == false
      return true
    else
      return false
    end
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end


def input_to_index(index)
  if index.is_a? Integer
    return index - 1
  else
    return index.to_i - 1
  end
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  loop do
    if index.to_i.between?(1, 9)
      index = input_to_index(index)
      if valid_move?(board, index)
        move(board, index,)
        display_board(board)
      end
      break
    else
      puts "Please enter 1-9:"
      index = gets.strip
    end
  end
end
