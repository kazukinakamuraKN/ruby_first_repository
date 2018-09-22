a = "岩手"
b = "花巻"
#puts "#{a}県 {b}市"
puts "#{a}県#{b}市"

puts "".length
puts "".empty?
#puts "".length.length
#puts "".empty?.length
puts "#{a}\t#{b}"
puts '#{a}\t#{b}'
#if "".empty?
#  puts "true OK"
#else
#  puts "else NG..."
#else
#end
if "".empty?
elsif
  puts "NG"
elsif
  puts "NGNG"
end

x = ""
y = ""
puts "trueです" if y.empty? && x.empty?
puts "falseです" if !x.empty? && !y.empty?
z = "aaa"
puts "trueですyお" if !(z.length == 0)

#puts null.to_s

puts nil.to_s
puts "nil empty true & true.length == 4"if nil.to_s.empty?.to_s.length == 4

puts nil.nil?

#0がtrueなのか。
#強制論理値変換
puts !!0

string = "foobar"
puts "The string #{string} is nonempty." unless string.empty?

car = "racecar"
puts car.length
reverse_car = "racecar".reverse

puts "おなじですよ" unless !(car == reverse_car)
car = "onomatopoeia"
puts "違いますよ" if !(car == reverse_car)