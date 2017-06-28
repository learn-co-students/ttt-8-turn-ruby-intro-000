def display_board(board = [" "," "," "," "," "," "," "," "," "])
  row_separator = "-----------"
  element_separator = "|"

  board.each_with_index do |element, index|
    print " #{board[index]} "
    temp_index = index+1
    if (temp_index % 3 != 0)
      print element_separator
    else
      puts ""
      puts row_separator unless index == board.length-1
    end
  end
end

def valid_move?(board, pos)
  if (pos >= 0 && pos < 9) && !position_taken?(board, pos)
    true
  else
    false
  end
end

def position_taken?(board, pos)
  !(board[pos] == " " || board[pos] == "" || board[pos] = nil)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, player_type = "X")
  board[position] = player_type
  board
end

def get_user_input
  puts "Please enter 1-9:"
  position = gets.chomp
  index = input_to_index(position)
end

def turn(board)
  index = get_user_input
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
