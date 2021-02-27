

def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  rows = [" #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts rows[0]
  puts rows[1]
  puts rows[2]
  puts rows[3]
  puts rows[4]
end

def input_to_index(input)
  input.to_i
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  else board[index] == " " || board[index] == "" || board[index] == nil
    true
  end
end
def valid_move?(board, index)
 if index < 0
  false
elsif index > 8
  false
else position_taken?(board, index)
  end
end

def move(array, index, value = "X")
  array[index] = value
end

counter = 0

def turn(board)
  puts "Please enter 1-9:"
   index = input_to_index(gets.strip)
  if valid_move?(board, index) == false
    input_to_index(gets.strip)
  else false
    move(board, index, value = "X")
    display_board(board)
    end

end
