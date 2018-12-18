#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeatedString(s, n)
  (n/s.size) * s.count(a) + s[0...(n % s.size)].count('a')
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.to_s.rstrip

# n = gets.to_i

s = "aba"
n = 10

result = repeatedString s, n
p result

# fptr.write result
# fptr.write "\n"

# fptr.close()