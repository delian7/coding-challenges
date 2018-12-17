require 'json'
require 'stringio'

# Complete the countingValleys function below.
def countingValleys(n, s)
  num_valleys = 0
  ar = s.split ''
  counter = 0

  ar.each do |direction|
    direction == "U" ? counter += 1 : counter -= 1
    num_valleys += 1 if counter == 0 && direction == "U"
    p counter
  end

  num_valleys
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = 8

s = "UDDDUDUUDUDUUUDDDU".rstrip

result = countingValleys n, s
p result

# fptr.write result
# fptr.write "\n"

# fptr.close()