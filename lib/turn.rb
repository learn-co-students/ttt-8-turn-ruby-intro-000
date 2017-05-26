def display_board(arr)
  iter = 0
  max = 3
  index = 0
  while iter < max
    puts " #{arr[index]} " + "|" + " #{arr[index+1]} " + "|" + " #{arr[index+2]} "
    if iter < (max - 1)
      puts "-----------"
    end
    index += 3
    iter += 1
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index <= 9
    !position_taken?(board, index)
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board.empty?
    return false
  else
    if board[index] == nil
      return false
    else
      in_len = board[index].strip.length
      if in_len != 0
        return true
      else
        return false
      end
    end
  end
end

# code your input_to_index and move method here!
def input_to_index(index)
  space = index.to_i
  return space - 1
end

def move(arr, index, char = "X")
  arr[index] = char
  return arr
end

def turn(board)
  puts "Please enter 1-9:"
  index_ = nil
  loop do
    input_ = gets
    index_ = input_to_index(input_)
    break if valid_move?(board, index_)
  end
  move(board, index_)
  display_board(board) 
end
