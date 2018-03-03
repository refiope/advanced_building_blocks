def bubble_sort (array)
  for loops in (0...array.length - 1) # number of times loop needed
    for index in (0...array.length - loops - 1) # the index that needs to be reached each loop
      array[index], array[index+1] = array[index+1], array[index] if (array[index]) # switch if value of next index is greater
    end
  end
  array.inspect
end

def bubble_sort_by (array)
  for loops in (0...array.length - 1) # same as #bubble_sort method: number of times loop needed
    for index in (0...array.length - loops - 1) # the index that needs to be reached each loop
      comparison = yield(array[index], array[index + 1]) # store block that compares the two values
      array[index], array[index+1] = array[index+1], array[index] if (comparison > 0) # switch if the result of block 
    end
  end
  array.inspect
end
