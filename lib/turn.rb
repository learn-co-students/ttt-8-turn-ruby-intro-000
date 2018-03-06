# prepare the board *TASK 1
board=[" "," "," "," "," "," "," "," "," "]

def show_dashes
  dash="-"
  dashes=11.times do print"#{dash}" end
  @dash11=dashes.to_s.chop.chop 
  return @dash11
end

def display_board(board)
  @pad=" "
  @line1="#{@pad + board[0] + ' | ' + board[1] + ' | ' + board[2] + @pad}"
  @line2="#{@pad + board[3] + ' | ' + board[4] + ' | ' + board[5] + @pad}"
  @line3="#{@pad + board[6] + ' | ' + board[7] + ' | ' + board[8] + @pad}"
  @show_board=puts "#{@line1}"; puts"#{show_dashes}"; puts "#{@line2}"; puts"#{show_dashes}"; puts "#{@line3}"
  return "#{@show_board}"
end
#display_board(board)

# convert user move to array format *TASK 2
def input_to_index(d)
  digit = d.to_i
  digit -= 1
  return digit
end

# check to see if the user makes a valid move *TASK 3
def valid_move?(board, index) #in actual use, index would be really @move
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    false
  else
    true
  end
end

# create the move action to allow user to make a move *TASK 4
def move(board, index, x)
  board[index]=x
end