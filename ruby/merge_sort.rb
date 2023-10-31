def merge(arr1, arr2)
  result = [] #input 1 = [1, 2] input 2 = [0, 6]
  # while arr 1 && arr2 have values do
  until arr1.empty? || arr2.empty?
  #take two arrs and compare the elems at 0
    if arr1[0] < arr2[0]
    #the lesser value gets removed from the arr and pushed into result
      result.push(arr1.shift)
    else
      result.push(arr2.shift)
    end
  end
  #
  # which arr is empty?
  # if either arr is empty concat the other arr into the result
  if arr1.empty?
    result.concat(arr2)
  else
    result.concat(arr1)
  end
  #return result
  result
end

def merge_sort(arr)
  # type your code in here                                            [1,4,3]
  # break down the arr into single an array of single elem arrays [[1], [4], [3]]
  #base cases if [] or [1]
  return arr if arr.empty? || arr.size == 1
# else find middle index
  mid_idx = arr.size / 2
  left = arr[0...mid_idx]
  right = arr[mid_idx..-1]
  # recursively call merge_sort on left and right
  return merge(merge_sort(left), merge_sort(right))
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [1, 2]"
  puts "=>", merge_sort([2, 1])

  puts

  puts "Expecting: [1, 2, 3]"
  puts "=>", merge_sort([1, 2, 3])

  puts

  puts "Expecting: [-10, 0, 2, 2, 5, 10, 20]"
  puts "=>", merge_sort([10, -10, 0, 2, 20, 5, 2])
 puts

#  puts "Expecting: [-10, 0]"
#  pp "=>", merge([-10],[ 0])

#  puts "Expecting: [1,1,3,4,6,7,9]"
#  print "=>", merge([1, 4, 6],[ 1, 3, 7, 9])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
=begin
take the array and divide it in half until it is and array of arrays that are a single elem
compare the arr[0] with arr [1] and sort
=end
# And a written explanation of your solution
