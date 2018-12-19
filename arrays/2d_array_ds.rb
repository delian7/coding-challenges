#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
  counter = 0
  hourglass_sums = {}
  arr.each_with_index do |row, row_index|
    
    row.each_with_index do |col, col_index|
      unless arr[row_index][col_index + 2].nil? || arr[row_index + 2].nil?
        hourglass_sums[counter] = 0
        hourglass_sums[counter] += arr[row_index + 0 ][col_index + 0] + arr[row_index + 0 ][col_index + 1] + arr[row_index + 0 ][col_index + 2]
        hourglass_sums[counter] += arr[row_index + 1 ][col_index + 1]
        hourglass_sums[counter] += arr[row_index + 2 ][col_index + 0] + arr[row_index + 2][col_index + 1] + arr[row_index + 2][col_index + 2]

        counter += 1
      end
    end

  end
  hourglass_sums.values.max
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# arr = Array.new(6)

# 6.times do |i|
#     arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end

arr = [
  [1, 1, 1, 0, 0, 0], 
  [0, 1, 0, 0, 0, 0], 
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0], 
  [0, 0, 0, 2, 0, 0], 
  [0, 0, 1, 2, 4, 0]
]

result = hourglassSum arr
p result
# fptr.write result
# fptr.write "\n"

# fptr.close()