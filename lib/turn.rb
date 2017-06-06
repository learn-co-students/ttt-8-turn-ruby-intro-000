

def turn(board)
puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)
if
 valid_move?(board, index) == true
 move(board, index)
elsif valid_move?(board, index) == false
  puts "Please enter a number, 1-9 on keyboard"
  input = gets.chomp
#end
end
display_board(board)
end


def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if
    position_taken?(board, index)
    false
  elsif
    position_taken?(board, index) != false
    true
  elsif
    index <0 || index>9
    false
  else
    true
  end
end

def position_taken?(board, index)
if
  board[index] == "X"
  true
elsif
  board[index] == "O"
  true
elsif
  board[index] != ""
  false
elsif
  board[index] != " "
  false
elsif
  board[index] == nil
  false

end

end


def display_board(board)
r_one = [" #{board[0]} "  "| " "#{board[1]}"  " | " "#{board[2]} "]
r_two  = ["-----------"]
r_three = [" #{board[3]} "  "| " "#{board[4]}"  " | " "#{board[5]} "]
r_four = ["-----------"]
r_five = [" #{board[6]} "  "| " "#{board[7]}"  " | " "#{board[8]} "]
puts r_one
puts r_two
puts r_three
puts r_four
puts r_five
end

def move(board, index, character = "X")
board[index] = character
end
