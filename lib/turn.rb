def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
      until valid_move?(board, index)
        puts "Please enter 1-9:"
        input = gets.chomp
        index = input_to_index(input)
      end
    if valid_move?(board, index)
       move(board, index, value = "X")
       display_board(board)
    end
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1
end


def move(board, index, value = "X")
  def update_array_at_with(array, index, value)
    array[index] = value
  end
  update_array_at_with(board, index, value)
end


def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end
