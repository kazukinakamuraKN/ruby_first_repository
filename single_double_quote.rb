greed = "hello"
puts ' #{greed}'
puts " #{greed}"
puts " \#{greed}"
backslash = '\n'

puts "#{greed + "#{backslash}" + greed}"
puts "hello\nhello"