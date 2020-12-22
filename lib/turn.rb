def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  (input.to_i) - 1
end


def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)

  if position_taken?(board, index) == true || index.between?(0,8) == false
    false
  else
    true
  end

end

def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] ==  nil
  false
else
  true
end
end


def turn(board)
puts "Please enter 1-9:"
input = gets.strip.to_i
index = input_to_index(input)

while valid_move?(board, index) == false
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)


end
move(board, index, value = "X")

display_board(board)
end
