def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  x = "#{input}".to_i
  index = x-1
end

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == ""|| board[index] == " " || board[index] == nil
      return false
    else
      return true
    end
  end

  def valid_position?(index)
    if index.between?(0, 8) == true
      return true
    else
      return false
    end
  end
  if (position_taken?(board, index)) == false && (valid_position?(index)) == true
    return true
  else
    return false
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
