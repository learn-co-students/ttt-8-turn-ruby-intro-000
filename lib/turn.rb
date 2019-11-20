def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end 

def input_to_index(r)
    
     int=r.to_i
     index=int-1
     
     return index
end     
 def valid_move?(board, index)
   if index >=0 && index <= 8
     if board[index]=="X" || board[index]=="O"
        return false
      else
        return true
      end  
    else
        return false
    end
  
end

 def move(board, index,t="X")
     board[index]=t
     return board
 end

 def turn(board)
 puts "Please enter 1-9:"
  
  r=gets.chomp
  index=input_to_index(r)
   
  if valid_move?(board,index)== true
     
     
     move(board, index)  
     display_board(board) 
     
    
  else
    
         
         turn(board)
     
  end
end     

 

