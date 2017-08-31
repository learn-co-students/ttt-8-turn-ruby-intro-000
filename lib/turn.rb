def turn (board = [" ", " ", " ", " ", " ", " ", " ", " ", " "] )
  valid = false
  while valid == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board, index)
      if (valid == true)
        move(board, index)
        display_board(board)
      end
  end

end

def display_board(array)
puts " #{array[0]} | #{array[1]} | #{array[2]} "
puts "-----------"
puts " #{array[3]} | #{array[4]} | #{array[5]} "
puts "-----------"
puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def position_taken?(array, index)
if (array[index] == " " || array[index] == "" || array[index] == nil)
  taken = false
elsif (array[index] == "X" || array [index] == "O")
  taken = true
end
return taken
end

def valid_move?(array, index)
x = position_taken?(array, index)
if (x == false && index > -1 && index < 9)
  valid_move = true
else
  valid_move = false
end
return valid_move
end

def move(board, index, value = "X")
board[index] = value
end

def input_to_index(word)
x = word.to_i - 1
end
