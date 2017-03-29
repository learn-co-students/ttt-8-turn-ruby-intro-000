def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,user_input,player_character="X")
  board[user_input] = player_character

end

# code your #position_taken? method here!
def position_taken? (board,index)

  if board[index]==" " || board[index]==""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index]=="O"
    true    
  end

end

def valid_move?(board,index)

  if position_taken?(board,index)==true
        false
  elsif index.between?(0,8) == true && position_taken?(board,index)==false
    true
  end

end

def turn(board)

  puts "Please enter 1-9:"

  input=gets.strip
  index=input_to_index(input)

  if valid_move?(board,index) == true
    move(board,index,player_character="X")
    display_board(board)
  else valid_move?(board,index) == false
    until valid_move?(board,index) == true
      puts "Please enter 1-9:"
    
      input=gets.strip
      index=input_to_index(input)
      if valid_move?(board,index)==true
        valid_move?(board,index) == true
      else valid_move?(board,index)==false
        turn(board)
      end
    end
    
  end  

end