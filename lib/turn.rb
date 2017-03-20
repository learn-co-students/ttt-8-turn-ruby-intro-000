# code your #valid_move? method here
def valid_move?(arr, idx)
  if (0..8).include?(idx) && !(position_taken?(arr, idx))
    return true
  end
  false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(arr, idx)
  if arr[idx] == "X" || arr[idx] == "O"
    return true
  end
  false
end

def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

# code your input_to_index and move method here!
def input_to_index(num)
  (num.to_i) - 1
end

def move(arr, idx, value = "X")

  arr[idx] = value
end

def turn(arr)
  puts "Please enter 1-9:"

  num = gets.strip

  idx = input_to_index(num)

  if valid_move?(arr, idx)
    move(arr, idx)

    display_board(arr)
  else
    turn(arr)
  end


end
