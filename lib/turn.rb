def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end
  
  def valid_move?(board, index)
  
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end
  
  def board_move?(num)
    if num.between?(0, 8) == true 
      return true
    else
      return false
    end
  end
  
  if (position_taken?(board, index)) == false && (board_move?(index)) == true
    return true 
  else
    return false
  end
  
end

def move(board, position, char = "X")
board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end