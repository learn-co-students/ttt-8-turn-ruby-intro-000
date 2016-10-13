
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
    if index.between?(0, 8) == true && position_taken?(board, index) == false
        return true
    else
        return false
    end
end


def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
        return false
    elsif board[index] == nil
        return false
    elsif board[index] != 'X' && board[index] != 'O'
        return false
      else
        return true
    end
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    valid_move(board, index)

    if index.between?(0, 8)
      move(board, index, player)


def move(board, index, player)
    if valid_move?(board, index) == true
        board[index] = player
    end
end
