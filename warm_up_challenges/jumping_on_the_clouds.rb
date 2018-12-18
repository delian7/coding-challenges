#!/bin/ruby

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
  index = 0
  jump = 0
  
  while c[index + 1]
    if c[index + 2] == 0
      jump += 1
      index += 2
    else
      jump += 1
      index += 1
    end
  end
  jump
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# n = gets.to_i

# c = gets.rstrip.split(' ').map(&:to_i)

n = 6
c = "0 1 1 0 0 0 1 0".split(' ').map(&:to_i)

result = jumpingOnClouds c
p result

# fptr.write result
# fptr.write "\n"

# fptr.close()