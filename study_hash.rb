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
