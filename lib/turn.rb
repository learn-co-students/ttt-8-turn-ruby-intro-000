def display_board(board)

    puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index, charactor = "X" )
    board[index] = charactor
end

move(board, 1, "charactor")

board = ["  ","  ","  ","  ","  ","  ","  ","  ","  "]
index = 0

def valid_move?(board,index)
  if position_taken?(board,index) == false&&index.between?(0, 8)
      return true
    end
end

def position_taken?(board,index)

  if board[index] == " "||board[index] == ""||board[index]== nil
  return false
end
  if board[index] == "X"||board[index] == "O"
    return true

 end
end

board = [" "," "," "," "," "," "," "," "," "]
def turn(board)
  puts "Please enter 1-9:"

  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index, charactor = "X" )
    print display_board(board)
  else turn(board)
  #  if index = input.to_i - 1
  end
end
