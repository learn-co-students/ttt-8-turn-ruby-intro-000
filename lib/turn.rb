
# This method should accept a board as an argument 
# and print out the current state of the board for the user.
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

# This method should accept a board and an index 
# from the user and return true if the index is 
# within the correct range of 0-8 and is currently 
# unoccupied by an X or O token.
def valid_move?(board, index)
    if position_taken?(board, index) 
        return false
    elsif index.between?(0,8)
        return true
    elsif board[index] == "X" || board[index] == "O"
        return false 
    else 
        return false 
    end 
end 

# This is a helper method pointing to valid_move. 
def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil 
        return false 
    else 
        return true 
    end 
end 

# This method takes user input. 
def input_to_index(user_input)
    user_input.to_i-1
end 

# # This method should accept a board, an index from the user 
# (which was converted from their raw input with input_to_index)
# , and a token to mark that position with 
# (default value of 'X'). 
# The method should set the correct index value of that position 
# within the board equal to the token.
def move(board, index, character = "X")
    board[index] = character 
end 

# This method is for user turn while playing. 
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip 
    index = input_to_index(input)
    if valid_move?(board, index) 
        move(board, index, character = "X")
        display_board(board) 
    else 
        turn(board)
    end 
end