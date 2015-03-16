arr = [1, 2, 3, 4, 5]
hash = {:one => 1, :two => 2, :three => 3}

for key, val in hash
	val = 228 # not
end
#print key # разница в этом!

hash.each do |i, v|
	v = 228 # not
end

arr.map do |v, i|
	print i, "    "
end