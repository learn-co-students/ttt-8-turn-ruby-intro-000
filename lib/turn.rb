def valid_move?(board, index)
  position_on_board?(index) && !position_taken?(board,index)
end

def position_taken?(board, index)
  if(board[index]=="X" || board[index]=="O")
    return true
  end
  return false
end

def position_on_board?(index)
  index.between?(0,8)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(digit)
  index = digit.to_i - 1;
end

def move(board, index, player="X")
  board[index]="#{player}"
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input);
    if(valid_move?(board,index))
      move(board,index)
      display_board(board)
      break
    end
  end
  index
end
