#lesson
a = "A man,a plan,a canal,Panama"
p a
p a.split(",")
p a
a_split = a.split(",")
p a_split
b = a_split.join
p b
c =  b.split(" ")
p c
c = c.join
p c
d = b.split(" ").join
p d
e = d.reverse
p d == e
p d
p e
p d.downcase == e.downcase
p d.downcase == e
p d == e.downcase
#false a = %w["a".."z"].to_a
a = ("a".."z").to_a
#false p a[6]
p a[5]



#study

a =  0..9
puts a
p a
#error 9.to_a
#0..9.to_a
b = (0..9).to_a
p b
# %w を使用して文字列の配列に変換 数値は？可能？
a = %w[foo bar baz quux]
p a
a = %w[1 2 3 4 5 '' "" " " ]
p a
p a[0..2]
p a[0..-1]
p a.length
p a[0..-1].length
p a[0..2].length
b = ("a".."e").to_a
p b
p b.length
p b[0..3].length