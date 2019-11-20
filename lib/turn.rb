def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    puts "#{user_input}"
    converted_input = user_input.to_i - 1
end

def valid_move?(board, index)
    if index < 0 or index > 8
        return false
    elsif board[index] == "X" or board[index] == "O"
        return false
    else
        return true
    end
end

def move(board,converted_input,character = "X")
    puts board[converted_input] = "#{character}"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
      move(board,index,character = "X")
      display_board(board)
  else
      turn(board)
  end
end
#     puts "Please enter 1-9:"
#     turn = gets
#     input_to_index(turn)
#     valid_move?(board,0)
#     if valid_move?(board, 0)
#
#     end
# end
