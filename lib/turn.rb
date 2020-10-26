
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
    index = move.to_i - 1
    index
  end
  
  def move(array, index, value = "X")
    array[index] = value
  end

  def position_taken?(board, index)
    if board[index] == " "
        return false
    elsif board[index] == ""
        return false
    elsif board[index] == nil
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    end
end

def valid_move?(board, index)
    if position_taken?(board, index) || !index.between?(0, 8)
        return false
    else
        return true
    end
end

def turn(board)
    puts "Please enter 1-9:"
    move = gets.strip
    index = input_to_index(move)
    if valid_move?(board, index)  
        move(board, index, "X")
        display_board(board)
    else
        turn(board)
    end
end