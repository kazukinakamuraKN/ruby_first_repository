def string_message(str = '')
  if str.empty?
    "It's an empty string!"
  else
    "The string is nonempty"
  end
end

puts string_message("")