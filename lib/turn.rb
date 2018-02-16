def display_board(board)
  9.times do |i|
    print " #{board[i]} "
    if (i+1) % 3 == 0 and i < 8 then
      puts ""
      puts "-" * 11
    end
    print "|" if (i+1) % 3 != 0
  end
  puts ""
end

def move(board, position, char)
  board[position] = char
end

def turn(board)
  begin
    puts "Please enter 1-9:"
    position = gets.chomp
    position = input_to_index(position)
  end while !valid_move?(board, position)
  move(board, position, "X")
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  board[index] != " "
end