def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index(input)
       index = input.to_i - 1
       return index
    end

  def move(board, index, user_marker = "X")
        board[index] = user_marker
      end

  def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
    end
  end

  def valid_move?(board, index)
    if index.between?(0, 9) && !position_taken?(board, index)
   return true
  else
    return false
    end
  end

  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
    else
    turn(board)
  end
end
