#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  color_hash = {}
  pairs = 0

  ar.each do |color|
    if color_hash[color] 
      color_hash[color] += 1
    else
      color_hash[color] = 1
    end
  end

  color_hash.each do |key, value|
    pairs += value / 2
  end

  pairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

n = 9
ar = "10 20 20 10 10 30 50 10 0 -1 -1 099999999 099999999".split(' ').map(&:to_i)

result = sockMerchant n, ar
p result

fptr.write result
fptr.write "\n"

fptr.close()
