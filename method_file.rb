#def string_message(str = '')
#  if str.empty?
#    "It's an empty string!"
#  else
#    "The string is nonempty"
#  end
#end

def string_check(str = "")
  puts "This string is [#{str}}"
  if str.empty?
    puts "This string is empty"
  else
    puts "This string length is [#{str.length}]"
  end
end

string_check("aiueo")
string_check()
string_check