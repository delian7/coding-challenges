def checkMagazine(magazine, note)
  magazine_hash = Hash.new(0)
  note_hash = Hash.new(0)
  can_write = true

  note_hash = Hash[note.collect { |word| [word, note_hash[word] += 1] }]
  magazine_hash = Hash[magazine.collect { |word| [word, magazine_hash[word] += 1] }]

  note_hash.each do |key, value|
    can_write = false unless value <= magazine_hash[key].to_i # to_i treats nil as 0
  end

  puts can_write ? "Yes" : "No"
end

m = "give me one grand night".rstrip.split(' ').map(&:to_s)
n = "give one grand".rstrip.split(' ').map(&:to_s)
checkMagazine(m, n)

m = "two times three is not four".rstrip.split(' ').map(&:to_s)
n = "two times two is four".rstrip.split(' ').map(&:to_s)
checkMagazine(m, n)

m = "ive got a lovely bunch of coconuts".rstrip.split(' ').map(&:to_s)
n = "ive got some coconuts".rstrip.split(' ').map(&:to_s)
checkMagazine(m, n)
