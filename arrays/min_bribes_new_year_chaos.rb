#!/bin/ruby

require 'json'
require 'stringio'

# Complete the minimumBribes function below.
def minimumBribes(queue)
  last_index = queue.count - 1
  num_bribe = 0
  swapped = false

  queue.each_with_index do |value, index|
    return puts "Too chaotic" if (value - 1) - index > 2
  end

  last_index.times do |x|

    last_index.times do |y|
      if queue[y] > queue[y+1]
        queue[y],queue[y+1] = queue[y+1],queue[y]
        num_bribe += 1
        swapped = true
      end
    end

    if swapped
      swapped = false
    else
      break
    end
  end

  puts num_bribe
end
q = "2 1 5 3 4".split(' ').map(&:to_i)
minimumBribes q
q = "2 5 1 3 4".split(' ').map(&:to_i)
minimumBribes q
q = "1 2 5 3 7 8 6 4".split(' ').map(&:to_i)
minimumBribes q

# Fenwick Tree


