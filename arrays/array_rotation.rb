#!/bin/ruby

require 'json'
require 'stringio'

# Complete the rotLeft function below.
def rotLeft(a, d)
  str = ''

  a.count.times do |i|
    new_index = (i + d) % a.count
    str += "#{a[new_index]} "
  end

  str.split(' ')
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# nd = gets.rstrip.split

# n = nd[0].to_i

# d = nd[1].to_i

n = 5
d = 4

# a = gets.rstrip.split(' ').map(&:to_i)

a = "1 2 3 4 5".split(' ').map(&:to_i)

result = rotLeft a, d
p result.join " "

# fptr.write result.join " "
# fptr.write "\n"

# fptr.close()
