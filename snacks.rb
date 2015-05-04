### MARSHALING
s1 = String.new
s1 = 'before marshaling';
s1Dump = Marshal.dump s1
s1 = 'after marshaling'
print s1, "\n" # after marshaling
s2 = Marshal.load s1Dump
print s2, "\n" # before marshaling


### FREEZE
f = "ice"
f.freeze
f.frozen? # true
# s.upcase! - ERROR, object frozen!


### TAINT
t = 'i\' m bad sting, uha ha ha ha!'
t.taint
t.tainted? # true
t.upcase.tainted? # true
t[3, 4].tainted? # true


puts
### CASE
x = 20
haha = case
	when (1..10).include?(x) then "fooo!"
	when (11..15).include?(x) then "small"
	when (16..19).include?(x) then "statistic"
	when (20..23).include?(x) then "nigger!"
	end

x = 3
haha2 = case x
		when 1..2 then "1 - 2"
		when 3..4 then "3 - 4"
		else "else"
		end
print haha2, "\n" # 3 - 4


puts
### FIBRES
f = Fiber.new {|x='Main Programm'|
	puts "I'm fibre, Hi, " + x
	Fiber.yield "89sadhf80"
	puts "I'm fibre, Bye"
}

fibreRes = f.resume "mainProg"
puts "Separate"
puts fibreRes
f.resume