def display_board(board)
  puts generate_row(board[0..2])
  puts "-"*11

  puts generate_row(board[3..5])
  puts "-"*11

  puts generate_row(board[6..8])
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)

  until valid_move?(board,index)
    puts "#{input} : Invaild input"
    display_board(board)
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end

def generate_row(row)
  return " #{row[0]} | #{row[1]} | #{row[2]} "
end

def input_to_index(input)
  #if input can not be convtered .to_i return 0
  return (input.to_i) -1
end

def valid_move?(board,index)
  return !position_taken?(board,index) && index.between?(0,8) && index.is_a?(Integer)
end

def position_taken?(board,index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, value="X")
    board[index]=value
end
