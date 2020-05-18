require 'pry'

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip

    index = input_to_index(input)
    validated = valid_move?(board, index) 
#binding.pry

    if validated == nil

        return turn(board)
    else
        move(board, index)
        display_board(board)
    end

end


    def display_board(board)
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def input_to_index(input)
        input = input.to_i
        input -= 1
    end

    def position_taken?(board, index)

        if board[index] == " " || board[index] == "" || board[index] == nil
            false
        elsif board[index] == "X" || board[index] == "O"
            true
        end

    end

    def valid_move?(board, index)

        # if (0..8).to_a.include?(!index)
        if !index.between?(0, 8)
            nil
        elsif position_taken?(board, index) == false
            true
        end

    end

    def move(board, fill_position, x_o = "X")  
        board[fill_position] = x_o
    end
    


#end
