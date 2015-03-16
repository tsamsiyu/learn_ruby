a = 0
puts "#{a=a+1} " * 3 # => 1 1 1

puts "Z" < "a" # => true

s = "hello"
puts s[s.length - 1] # => o
puts s[-1] # => o 
puts s[-s.length] # => h
s[0] = ?H
s[-1] = ?o + ?!
s[-1] = "!!!"
puts s # => Hello!!!
puts s[0,2] # => 'He'
puts s[0,100] # => Hello!!!
puts s[-1, 1] # => !
s[-1,1] = ''
s[0,1] = 'h'
s[s.length,0] = " ept!"
puts s # => hello!! ept!
puts s[0..0] # => 'h'
puts s[0...0] # => ''
s[0...0] = "Hey "
puts s # => Hey hello!! ept!
puts s[-4..-1] # => 'ept!'
while (s['l']) do s['l'] = "L" end # will be 2 itterations
puts s # => Hey heLLo!! ept!