words = %w[this is a test]
print words, "\n"

open = %w| ( [] [ ] [ { << < > |
print open, "\n"

empty = Array.new
nils = Array.new 3 # => [nil, nil, nil]
zeros = Array.new 4, 0 # => [0, 0, 0, 0]
copy = Array.new zeros
iterray = Array.new(3) {|i| i+1} # => [1, 2, 3]
print iterray, "\n"

testar = [0, 2, 4, 6, 8, 10]
testar[-1] = 1..10 # [0, 2, 4, 6, 8, 1..10]
testar[8] = 8 # [0, 2, 4, 6, 8, 10, nil, nil, 8]

fromReg = ('a'...'e').to_a
print fromReg[0, 3], "\n" # [a, b, c]
print fromReg[0..3], "\n" # [a, b, c, d]
print fromReg[0..-1], "\n" # [a, b, c, d]
fromReg[1..3] = ['B', 'C', 'D'] # [a, B, C, D]
fromReg[2..3] = ['c', 'd', 'e', 'f'] # [a, B, c, d, e, f]
fromReg[1...3] = ['b', 'B', 'bB', 'Bb', 'bb', 'BB'] # [a, b, B, bB, Bb, bb, BB, e, f]


print [1, 2, 3] + [4, 5, 6], "\n" #=> [1, 2, 3, 4, 5, 6]
print [1, 2, 3, 3, 2, 4] - [2, 3], "\n" # [1, 4]
print [1, 2, 2, 3] | [1, 4, 8], "\n" # [1, 2, 3, 4, 8]
print [1, 2, 3] & [1, 4, 10], "\n" # [1]