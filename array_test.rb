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