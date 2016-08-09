def display_board(board)# Define display_board that accepts a board and prints
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def position_taken?(board,index)
  if board.size == 9
    if  board[index]=="X" || board[index]=="O"
    true
    else
    false
    end
  end
end
def valid_move?(board,index)
  if index.between?(0,8)
      if position_taken?(board,index)== true
      false
    else
      true
    end
  end
end
def input_to_index(input)
  index= input.to_i - 1
end
def move(board,index,value="X")
    board[index]=value
end
def turn(board)
  puts "Please enter 1-9:"
  input= gets.strip
  index= input_to_index(input)
  if valid_move?(board,index)== true
    move(board,index,value="X")
    display_board(board)
  else

    until valid_move?(board,index)== true
      puts "Please enter 1-9:"
      input= gets.strip
      index= input_to_index(input)
    end
  end
end
