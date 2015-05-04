proc_t = Proc.new {|x=0| x + 1}
lambda_t = ->(x=0; i,j) {x + 1}

puts proc_t.call 10
puts lambda_t.call 10

puts

puts proc_t[10]
puts lambda_t[10]

puts

puts proc_t.(10)
puts lambda_t.(10)

puts

puts ->(x, y){}.arity # 2
puts Proc.new {|x, y|}.arity # 2
puts lambda {|x=1, y=0|}.arity # -1
puts ->(x, y=5) {}.arity # -2
puts ->(y=5) {}.arity # -1