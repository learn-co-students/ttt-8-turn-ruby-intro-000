def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 index = user_input.to_i - 1
end

def valid_move?(board, index)
 if index.between?(0,8)
#if index >= 0 && index <= 8
   true
 else
   #index == "x" || index ="0"
   false
 end
end

def move(board,user_input,token="X")

 # token="x"
 board[user_input.to_i]=token
#  index=user_input.to_i
# board[index]=token

end

def turn (board)
puts "Please enter 1-9:"
 your_turn = gets.strip
 this_turn=input_to_index(your_turn)
 if valid_move?(board, this_turn)
   move(board,this_turn)
   display_board(board)
else
turn(board)
end
end


# board[user_input.to_i]=token
# new_index=user_input.to_i
# token="x"
# board[new_index]=token

#    user_input =8
#    until user_input<8
#    new_index=user_input.to_i
#   token="x"
# puts  board[new_index]=token
# user_input-=1
# end


  # index=user_input.to_i-1
# loop do
#
#   puts token
#     break if board[new_index] >=10
  # end

  # user_input = 0
  # while user_input < 9
  #  user_input +=1
  # return new_index==token
  # end
  # puts new_index=token
  # board.each_with_index do |token, index|
  # return "#(token)"
# end
# board.each_with_index{|value,index| return "#{index}" == "#{token}";}

 # board[user_input].to_i
# index=token
  #  my_move=user_input.to_i
  # new_index=my_move
  #  board[new_index]=token
  #
  #  counter = 0
  #  board.each do | token|
  #    if token == "X" || token == "0"
  #      counter +- 1
  #    end
  #  end
  #  counter
  # if input_to_index(user_input)<=9
  # else return "0"
  # end

# def move (board, user_input, token="X")
# board[user_input.to_i]=token
# end

#index= user_input.to_i-1
#new_favorite_index.to_i=token
#new_board=token
#board[new_favorite_index]
#index=new.index
#  new.index=user_input.to_i
  #token = "X"
  #board[user_input.to_i]=token
#   def move (board, index, token="X")
#  board[index] = token
