# MARSHALING
s1 = String.new
s1 = 'before marshaling';
s1Dump = Marshal.dump s1
s1 = 'after marshaling'
print s1, "\n"
s2 = Marshal.load s1Dump
print s2, "\n"

# FREEZE
f = "ice"
f.freeze
f.frozen? # true
# s.upcase! - ERROR, object frozen!

# TAINT
t = 'i\' m bad sting, uha ha ha ha!'
t.taint
t.tainted? # true
t.upcase.tainted? # true
t[3, 4].tainted? # true
