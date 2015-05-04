module A

	def mix
		puts 'mix mix mix'
	end

end

class C
	include A
end

c = C.new
c.mix