s = "hello"
i = 1
a = (1..2)
r = [rr: "rrr"]
puts r
range = []
  range.push(s,i,a,r)
  p range
  
p range[0]

range.each do |i|
  if !(i.class == "BasicObject")
    puts i.class
    puts i.class.superclass
    puts i.class.superclass.superclass
    p i.class.superclass.superclass.superclass
  else i.class.superclass.superclass.superclass == nil
    puts i.class.superclass.superclass.superclass.superclass
end
end
p "実験"
int = 1
p int.class.superclass.superclass.superclass.superclass