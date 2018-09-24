p (1..5).each {|i| puts 2 * i }
#or
(1..5).each do |i|
  puts 2 * i
end

#Ruby共通の慣習によると短い一行のブロックは{}で表現し、長い一行のブロックや、複数行のブロックには do each を使用します。

(1..5).each do |num|
  puts 2 * num
  puts "--"
end