s = "hello"
num = 123
char = 'a'
flo = 0.123
dou = 0.0000000000000000000000000000000000000000000000000123
puts s.class
puts char.class
puts num.class
puts flo.class
puts dou.class
#charがでない、doubleがでない

s2 = String.new("hello")
#error num2 = Integer.new(12345)
#error flo2 = Float.new(0.123454)

#Arrayもできるそう
array_test = Array.new([1,2,3])
array_test2 = [1,2,3]
p array_test == array_test2

#Hashはちょっとちがう
hash_test = Hash.new
p hash_test

hash_test2 = {}
p hash_test2

p hash_test == hash_test2

hash_test3 = Hash.new(0)
p hash_test3

hash_test4 = {}
p hash_test4

p hash_test3 == hash_test4

#error p range_test = Range.new(1..10)
p range_test = Range.new(1,10)

r_t = Range.new(1,10)
r_t_2 = (1..10)
p r_t == r_t_2