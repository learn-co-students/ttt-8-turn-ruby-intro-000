  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


board = [" "," "," "," "," "," "," "," "," "]


  def input_to_index(user_input)
    index = user_input.to_i
    index -= 1
    return index
  end

  def valid_move?(board, index)
        def position_taken?(board, index)
          if board[index] == " " || board[index] == "" || board[index] == nil
            return false
          else
            return true
          end
        end
      
       def on_board?(num)
          if num.between?(0, 8) == true
            return true
          else
            return false
          end
      end
     
    if (position_taken?(board, index)) == false && (on_board?(index) == true)
      return true
    else
      return false
    end
  end
  
  
  def move(board, position, character="X")
    board[position]= character
  end
  
  def turn(board)
    puts "Please enter 1-9:"
    num = gets.chomp
    index=input_to_index(num)
    if valid_move?(board, index) == false
      turn(board)
    else
      move(board, index)
      display_board(board)
    end
  end 
  
  










