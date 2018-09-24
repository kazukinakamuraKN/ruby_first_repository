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

#３回繰り返します　3.times{}
3.times {puts "Betelgeuse"}
a = 1
#error 3.times { a++ }rubyに++はない--も
3.times { a+= 3}
  puts a
#予想外の結果しかし理解 a+a = aa aa+aa =aaaa aaaa+aaaa=aaaaaaaaa
b = "hello"  
3.times { b += b}
puts b
#**はべき乗//は？error
p (1..5).map{ |i| i**2}
p (1..5).map{ |i| i**3}
  #２で割ったら
p (1..5).map{ |i| i/2}
  #3で割ったあまり
p (1..5).map{ |i| i%3}
#blockはfor文？ eachがforっぽいeach繰り返し命令？っぽい1~5まで繰り返すdo eachで{}|i|には().eachが入る
(1..5).each do |i|
  puts i * 2
end
a = %w[a b c b d]
p a
#error p a.upcase
p a.map { |char| char.upcase}
(1..3).each do |i|
  puts i * 3
  piyo = i +1
end
#ok理解。
("a".."e").each do |i|
  puts i.upcase
end
#........んmapもeachも同じ？？入れ替えても結果変わらんなんだこれ意味あるのか

p (1..3)
p (1..3).to_a
p "ここから"
#(1..3).each do |i|
## piyo = i +1
#  p piyo
#end
#(1..3).map do |i|
##  piyo = i +1
#  p piyo
#end
#結果が分かった。まずレシーバーから。
#レシーバーとは、piyo.greed()だと、piyo
#(1..10).to_a.mapで言うと、(1..10)
#んで、mapはブロックの戻り値を集めた配列を作成して返します。
#eachの戻り値はレシーバー。
#つまり、mapはdo,end内で配列を作成している。そしてその配列が戻り値。
#eachのばあいは、do,endないで配列を作成しない。レシーバーが戻り値。
def map_sample
  (1..10).to_a.map do |i|
    piyo = i + 1
  end
end

p huga = map_sample()

def each_sample
  (1..10).to_a.each do |i|
    piyo = i + 1
  end
end

p hoge = each_sample()

p %w[a b C D].map(&:downcase)
p %w[a b C D].each(&:downcase)
#レシーバーをそのまま返しているeachとdowncaseを呼び出し、戻り値を返すmap