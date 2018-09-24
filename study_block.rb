#study
p "study"
num = (0..9).to_a
lang = ("a".."z").to_a
num_lang = num + lang
#test p num_lang
num_lang_shuffle = num_lang.shuffle
#test p num_lang_shuffle[0..6]
p ((0..9).to_a.push(("a".."z").to_a)).flatten.shuffle[0..5]

#study2
p "study2"
def string_shuffle(s)
  p s.split('').shuffle.join
end
string_shuffle("foobar")


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
#p %w[a b c].to_a.shuffle[0..7].join
p ("a".."z").to_a.shuffle[0..7].join
#a~zまでをto_aメソッドで配列にする。配列にshuffleメソッドを呼び出す。shuffleメソッドの結果シャッフルされたa~zのうち先頭から７つをjoinメソッドで結合して出力
def piyo_map
  (0..16).to_a.map do |num|
    p = num ** 2
  end
end
def piyo_each
  (0..16).to_a.each do |num|
    p = num ** 2
  end
end

p piyo_map
p piyo_each

#この結果から、eachとmapの違いが分かる

#def yeller(s)
#  s.to_a.map(&:upcase).join
#end
#
#a = %w[a b c d]
#p yeller(a)
def yeller(s)
  s.to_a.map(&:upcase).shuffle.join
end

p yeller(["o","l","d"])
  
#random subdomain
#配列と配列の結合をpushでやると、配列内に配列を含めてしまう。連想配列のようなイメージ
#この場合
#+で結合する
#flatten メソッドを使う
#concat メソッドを使う
#という解決法がある
#flattenは引数を複数指定可能
#concatは引数ひとつ
#+ は + をつけていけばどこまでもいける。
#flattenが一番楽かな。
#追記、flattenは連想配列状態にしてから有効。
  #つまり、pushをした後にflatten
  #こうなってくると場合による
  #concatは、引数ひとつだから、たくさんやるとなると、手間が増える。
  #が、push.push.push.flatten
  #concat.concat.concat
  #では大差ない。
  #+が一番早いと思われる。
#def random_subdomain_concat
#  a = ("a".."z").to_a
#  b = (0..9).to_a
#  p a.push(b).push(b).flatten
#end
def random_subdomain_concat
  a = ("a".."z").to_a
  b = (0..9).to_a
  p a.push(b).push(b).flatten
  p "flattenの結果は、そのときのみ↓"
  p a
  p a.push(b).push(b).flatten!
  p "破壊的flattenの結果、aはflattenメソッドの結果が残る。↓"
  p a
end

def random_subdomain_push_flatten
  a = ("a".."z").to_a
  b = (0..9).to_a
  p a.concat(b).concat(b)
  p "concat↓"
  p a
end

def random_subdomain_plus
  a = ("a".."z").to_a
  b = (0..9).to_a
  p a + b + b
end

random_subdomain_concat
random_subdomain_push_flatten
random_subdomain_plus


#concat は破壊的
#+ はメソッド
#<< はメソッド
#flatten は破壊的ではない。!をつければ破壊的