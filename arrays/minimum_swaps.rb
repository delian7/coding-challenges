#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumSwaps function below.
def minimumSwaps(arr)
  right_pointer = arr.count - 1
  count = 0
  min_swaps = 0

  while count < arr.count
    arr_value = count + 1
    if (arr[count] != arr_value)

      while arr_value != arr[right_pointer]
        right_pointer -= 1;
      end

      if right_pointer != count
        arr[count], arr[right_pointer] = arr[right_pointer], arr[count]
        min_swaps += 1
      end
    end
    count += 1
    right_pointer = arr.count - 1
  end
  min_swaps
end

# arr = gets.rstrip.split(' ').map(&:to_i)
arr = [7, 1, 3, 2, 4, 5, 6]
# arr = "4 3 1 2".split(' ').map(&:to_i)

arr = "1 3 5 2 4 6 7".split(' ').map(&:to_i)
p minimumSwaps(arr)