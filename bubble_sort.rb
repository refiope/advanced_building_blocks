# Thoughts behind nested iteration:
# first for_loop: number of times loop needed (comparison by itself is not neccessary, so -1)
# nested for_loop: the index that needs to be reached each loop
# (in each loop, last index is set and does not need to be changed, hence array.length - loop
# and -1 in the end because it doesn't need to reach the last index since we are comparing two values)

def bubble_sort (array)
  for loops in (0...array.length - 1)
    for index in (0...array.length - loops - 1)
      array[index], array[index+1] = array[index+1], array[index] if (array[index] > array[index+1]) # switch place if the second value is greater
  end
  array.inspect
end

def bubble_sort_by (array)
  for loops in (0...array.length - 1)
    for index in (0...array.length - loops - 1)
      comparison = yield(array[index], array[index + 1]) # store result passed by block that compares two values
      array[index], array[index+1] = array[index+1], array[index] if (comparison > 0) # switch place if the second value is greater
    end
  end
  array.inspect
end
