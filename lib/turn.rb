#displays board
def display_board(array)
  divider = "-----------"
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts divider
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts divider
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end
#converts input to index
def input_to_index( input )
  return input.to_i - 1
end
#determines is spot occupied
def position_taken(array, inp)
  if array[inp] == "X" || array[inp] == "O"
    return true
  elsif array[inp] == " " || array[inp] == ""
    return false
  else
    return false
  end
end
#determines if inputted move valid
def valid_move?(array, inp = 0)
  return  inp != nil && inp >= 0 && inp <= 8 && !(position_taken(array, inp))
end
# modifies board
def move(array, inp, token = "X")
    array[inp] = token
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  inp = input_to_index(input)
  while !(valid_move?( board, inp))
      puts "Please enter 1-9:"
      input = gets.strip
      inp = input_to_index(input)
  end
  move(board, inp, "X")
  display_board(board)
end
