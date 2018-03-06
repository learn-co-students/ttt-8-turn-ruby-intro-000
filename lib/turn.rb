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
display_board(board)
