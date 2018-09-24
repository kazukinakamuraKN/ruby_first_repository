require("test.rb")
a = [1,20,300]
#puts a
#print a
#p a
puts "a[0] #=> " "#{a[0]}"
#use -
puts "a[-1] #=> " "#{a[-1]}"
puts a.last
puts a.first
puts "a[]の要素数は" + "#{a.length}"
a_length = a.length
puts a_length == 3
print "a.shuffle => "
p a.shuffle
print "a.sort => "
p a.sort
print "a.reverse => "
p a.reverse
print "a => "
#破壊的メソッド!配列の内容を変更したい場合には、メソッド名の後に ! をつける
p a
p a.reverse!
p a
p a.shuffle!
p a
#配列に要素を追加するには push(追加したいもの)または、<< 追加したいものという構文を使う
a.push(5)
p a
a.push(3,2)
p a
a << 3
p a
a << 5 << 8
p a
#配列内に異なる型が共存できる
a << "aiueo"
p a
a.shuffle!
p a
a.push("12345")
p a
puts a
p a
#文字列の結合も可能。単純な結合は、join 間に何か挟みたいときは、join(,)のように引数を指定する
p a.join
a.join
p a
#error強制結合はできない
#a.join!
p a