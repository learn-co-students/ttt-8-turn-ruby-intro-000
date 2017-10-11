def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  (1..9).include?(user_input.to_i) ? user_input.to_i - 1 : -1
end

def move(board, pos, bleh = "X")
  board[pos] = bleh
end

# code your #valid_move? method here
def valid_move?(board,index)
  position_taken?(board,index) || !(0..8).include?(index) ? false : true

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if [" ", "", nil].include?(board[index])
    false
  elsif ["X","O"].include?(board[index])
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  pos = input_to_index(input)
  validation = valid_move?(board,pos)
  if validation
    # puts "Please enter 1-9:"
    # input = gets.chomp
    # pos = input_to_index(input)
    # validation = valid_move?(board,pos)
    move(board,pos)
    display_board(board)
  else
    turn(board)
  end
end
