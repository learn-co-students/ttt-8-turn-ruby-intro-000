def input_to_index(user_input)
  user_input = user_input.to_i
  return -1 if user_input < 1 || user_input > 9
  user_input - 1
end

def move(board, position, which_char='X')
  board[position] = which_char
  board
end

def display_board(game)
  inside = "-" * 11
  puts " #{game[0]} | #{game[1]} | #{game[2]} "
  puts inside
  puts " #{game[3]} | #{game[4]} | #{game[5]} "
  puts inside
  puts " #{game[6]} | #{game[7]} | #{game[8]} "
end

def valid_move?(board, index)
  return false if !(0..8).include?(index)
  !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == 'X' || board[index] == 'O' ? true : false
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    pick = gets.strip
    index = input_to_index(pick)
    if valid_move?(board, index)
      move(board, index, 'X')
      display_board(board)
      break
    end
  end
end
