#study 1
#class String
#  def palindrome?
#    self == reverse
#  end
#end
#
#p "racecar".palindrome?
#p "onomatopoeia".palindrome?
#p "Malayalam".downcase.palindrome?

#study 2
#class String
#  def shuffle
#    self.split("").shuffle.join
#  end
#end
#
#p "hello".shuffle

##self delete version
class String
  def shuffle
    split("").shuffle.join
  end
end

p "hello".shuffle