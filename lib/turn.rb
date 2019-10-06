def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !index.between?(0, 8)
    return false
  end

  value = board[index]
  if(value == nil)
    value = ""
  end

  return value.strip == ""
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  return input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)

  until valid_move?(board, index)
    puts "Enter valid number"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index, "X")
  display_board(board)

end
