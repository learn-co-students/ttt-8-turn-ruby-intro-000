def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!
def input_to_index(current)
  new_input=current.to_i
  return new_input -= 1
end
  def move(board,index,character="X")
   return board[index]=character
end


def valid_move?(board,index)
  def   position_taken?(board,index)
    if  board[index] == "" || board[index] == " "|| board[index]==nil
       false
    else
       true
    end
  end

def board_valid?(num)
  if num.between?(0, 8)==true
     true
  else
     false
  end
end

if( position_taken?(board,index)) == false && (board_valid?(index) == true )
   true
else
  false
end
end


def turn_count(board)
   counter = 0
   board.each do |spaces|
      if spaces == "X" || spaces == "O"
         counter += 1
      end
   end
   counter
end




def turn(board)
  puts "Please enter 1-9:"
  num=gets.chomp
  index=input_to_index(num)
  if valid_move?(board,index)==true
    move(board,index)
  display_board(board)
else
turn(board)
end
end
