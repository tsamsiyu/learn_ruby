# IT'S FINE!!!
a = [1, 2, 3]
b = [2, 3, 4]
c = [4, 5, 6]
matrix = [a, b, c]

for data in matrix do
	catch :missing_data do
		for row in data do
			throw :missing_data unless row
		end
	end
end