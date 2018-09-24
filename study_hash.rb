#make_hash
user_hash = {}
  user_hash["first_name"] = "Micheal"
  user_hash["last_name"] = "Hartl"
#  p user_hash["first_name"]
#  p user_hash["last_name"]
  p user_hash["first_name"] + user_hash["last_name"]
  p user_hash
#ハッシュロケット=> を使う場合、慣習として、先頭と末尾に空白を追加
  user_hash = { "first_name"=>"Micheal2", "last_name"=>"Hartl2" }
  p user_hash
#Rubyでは、ハッシュのキーに:(シンボル)を使用するのが普通ですだそうです

  
#make_student_hash
#student_hash = { :name = "bob" , :mail = "bob@mail" }
student_hash = { :name => "bob" , :mail => "bob@mail" }
p "name is " + student_hash[:name] + " mailaddress is " + student_hash[:mail]
#未定義のhash値はnilです
p student_hash[:pass]

#:を後ろに記述する記法もある、こちらの使われている頻度も高いため、両方理解すべし出そうです
animal_hash = { name: "pig", color: "pink" }
animal_hash2 = { :name => "pig", :color=> "pink" }
p animal_hash == animal_hash2 
#:を後ろに書く記法と、手前に書いて=>を使用する方法は両方とも内容は同じになる。
#比較すると、trueになることから、それはわかる
#どちらの記法で記述しても、ハッシュの使用時には、:が先頭にくる
# error p animal_hash[name:]
#ハッシュの値にハッシュを使用することもできる
#error 1
#animal_name_hash[:name] = { animal: pig, bird: swan, human: tanaka }
#p animal_name_hash[:name][:bird]
#error 2
#animal_name_hash[:name] = { animal: "pig", bird: "swan", human: "tanaka" }
#p animal_name_hash[:name][:bird]
#clear
animal_name_hash = {}
animal_name_hash[:name] = { animal: "pig", bird: "swan", human: "tanaka" }
p animal_name_hash[:name][:bird]
  
#hash each

#flash = { success: "It worked", danger: "It failed" }
#  flash.each do |key, value|
#    puts "#{key.inspect}  #{value.inspect}"
#  end

flash = { success: "It worked", danger: "It failed" }
  flash.each do |key, value|
    puts "#{key.inspect}  #{value.inspect}"
  end

  flash = { success: "It worked", danger: "It failed" }
  flash.each do |key, value|
    p "#{key}  #{value}"
  end

  
#study 1
lang_hash = { one: "uno", two: "dos", three: "tres" }
  lang_hash.each do |key , value|
    puts "#{key}のスペイン語は#{value}"
  end
  
#study 2
person1 = { first: "fbob", last: "lbob" }
person2 = { first: "fjon", last: "ljon" }
person3 = { first: "fpon", last: "lpon" }
params = {}
params = { father: person1, mother: person2, child: person3 }
puts params[:father][:first]
puts params

#study 3
pass = ((0..9).to_a + ("a".."z").to_a).shuffle[0..6].join
user = { name: "nakamura", eamil: "@mail", password_digest: pass }
puts user

#study 4
#puts { "a" => 100, "b" => 200, "c" => 300 }.merge({ "c" => 1, "d" => 2000 })
a = { "a" => 100, "b" => 200 }.merge!({ "b" => 300 })
puts a
#mergeはちょくせつputs できない
#puts { "a" => 100, "b" => 200 }.merge!({ "b" => 300 })
#
#mergeはちょくせつputs できない