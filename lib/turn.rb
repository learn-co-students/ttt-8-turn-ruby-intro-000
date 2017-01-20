def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  time = 0
  while time < 3
    puts " #{board[time * 3]} | #{board[time * 3 + 1]} | #{board[time * 3 + 2]} "
    if time < 2
      puts "-----------"      
    end
    time += 1
  end
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8)
    if board[index] == " " || board[index] == "" || !board[index]
      true
    end
  end
end

def move(board, index, charactor = "X")
  board[index] = charactor
end