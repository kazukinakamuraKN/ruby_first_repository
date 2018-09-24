def s_check(s = 'new')
  if s.empty?
    puts "s is empty"
  elsif s.include?("foo")
    puts "s is include foo"
  elsif s == "new"
    puts "s is not include"
  end
end

puts "s include foo"
s_check("foo")
puts "s include empty"
s_check("")
puts "not include"
s_check