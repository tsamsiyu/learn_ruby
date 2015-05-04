x = begin
	1
rescue TypeError => e
	print "type error"
rescue ArgumentError => e
	print "argument error"
	retry
rescue Exception => e
	print "exception"
	10
else
	2
ensure
	3
end

y = factorial(1) rescue 0 # factorial not exist.

print x, "\n" # => 2
print y, "\n" # => 0

raise RuntimeError, "Uncorrectly argument"