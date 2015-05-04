class Meta

	def self.nm
		puts "Meta"
	end

end

class A < Meta

	def eigenclass
		class << self; self; end
	end

end

class << A

	def eigenmethod
		puts 'eigenmethod'
	end

	def nm
		puts 'Eigen'
	end

end

a = A.new
a.eigenclass.eigenmethod
A.nm
Meta.nm