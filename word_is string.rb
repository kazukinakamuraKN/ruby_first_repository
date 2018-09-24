#class Word
#  def palindrome?(s)
#    puts s == s.reverse
#  end
#end
#
#w = Word.new
#w.palindrome?("racecar")
#class Word < String
#  def palindrome?
#    puts self == self.reverse
#  end
#end
#
#w = Word.new
#w.palindrome?("racecar")
#
#s = Word.new("hello")
#s.palindrome?
#p s.length
#self.reverse のselfはStringクラスの内部では省略できる

#study 1
class Word < String
  def palindrome?
    puts self == reverse
  end
end

#study 2
s = Word.new("hello")
s.palindrome?
p s.length

p Symbol.class.superclass.superclass.superclass.superclass
p Symbol.class.superclass.superclass.superclass
p Symbol.class.superclass.superclass
p Symbol.class.superclass