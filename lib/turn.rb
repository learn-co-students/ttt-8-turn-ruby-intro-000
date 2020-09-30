def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index_num)
  def position_taken?(board,index_num)
  if board[index_num] == " " || board[index_num] == "" || board[index_num] == nil
    return false
  else
    return true
  end
  end

  def board?(num)
    if num.between?(0,8) == true
      return true
    else
      return false
    end
  end

  if(position_taken?(board,index_num)) == false && (board?(index_num) == true)
    return true
  else
    return false
  end

# if index_num.between?(0,8) && !position_taken?(board,index_num)
#   return true
# else
#   false
# end
end



def move(board, index, current_player = "X")
  board[index] = current_player
  return board
end

def turn(board)
    puts "Please enter 1-9:"
    num = gets.chomp
    index = input_to_index(num)
    if valid_move?(board,index) == true
      move(board, index)
     display_board(board)
    else
      turn(board)
    end
end
