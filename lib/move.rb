def move(board, index, value = "X" )
  update_array_at_with(board, index, value)
  return board
end

def input_to_index(input)
  idx = input.to_i
  return idx - 1
end

def update_array_at_with(array, index, value)
    array[index] = value
end
