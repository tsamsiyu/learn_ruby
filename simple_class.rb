class Simple
	CONSTANTA = 10

	def x
		@x
	end

	def z
		@z
	end

	def x=(v)
		@x = v
	end

	private def initialize
		@x = -1
		@y = -1
		@z = -1
	end

	public def report
		reportXY
	end

	private def reportXY
		puts "x: #{@x}, y: #{@y}"
	end

	def Simple.statictest
		puts 'static method!'
	end

	def incrementX
		@x = @x + 3
	end

end

class Medium < Simple

	def rep
		reportXY
	end

end

# OBJECT
s = Simple.new
s.x  = 12
puts s.x
print "report s:"
s.report

# INHERIT OBJECT
puts
m = Medium.new
puts "m.x: " + m.x.to_s
puts "s.x: " + s.x.to_s
print "report m: "
m.rep

# VARIABLE INHERIT
puts
m.incrementX
puts "m.x: " + m.x.to_s
puts "s.x: " + s.x.to_s
puts
s.incrementX
puts "m.x: " + m.x.to_s
puts "s.x: " + s.x.to_s

# COPY
puts
sc = s.dup
sc.x = 0
puts "sc.x: " + sc.x.to_s
puts "sc.z: " + sc.z.to_s
puts "s.x: " + s.x.to_s

print "\n", '---------------', "\n"

# STATIC
Simple::statictest


