def twoStrings(s1, s2)
  has_substring = false
  if s1.size <= s2.size
    smaller_string = s1
    bigger_string = s2
  else
    smaller_string = s2
    bigger_string = s1
  end

  smaller_string.chars.each do |letter|
    if bigger_string.include? letter
      has_substring = true
      break
    end
    p letter
  end

  has_substring ? "YES" : "NO"
end

s1 = "hello"
s2 = "world"
p twoStrings s1, s2

s1 = "hi"
s2 = "world"
p twoStrings s1, s2