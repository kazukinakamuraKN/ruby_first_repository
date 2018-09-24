class Word
  def palindrome(string)
    puts string == string.reverse
  end
  
  def empty(string)
    puts string.empty?
  end
  
  def nil_check(string)
    puts string.nil?
  end
end

w = Word.new
w.palindrome("racecar")
w.palindrome("stringssad")
w.empty("")
w.empty("a")
w.nil_check(nil)
w.nil_check("a")