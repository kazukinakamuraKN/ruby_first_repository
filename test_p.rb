class Cat

  def tunakan
    secret_tunakan
  end

  private
  def secret_tunakan
    puts "delicious"
  end
end

a = Cat.new
#a.tunakan
a.secret_tunakan


#class Aclass
#  def aclassmethod
#    puts "aclassmethod"
#  end
#  
#  def self.method
#    puts "self.aclassmethod"
#  end
#  
#  def piyo
#    self.aclassmethod
#  end
#end
#
#aclass = Aclass.new
#aclass.piyo
#
#
##class Human
##  def greed
##    puts "I'm Human"
##  end
##end
##
##class Programmer < Human
##  def greed
##    puts "I'm Programmer"
##    super
##  end
##end
##
##class Baby < Human
##end
##
##human = Human.new
##human.greed
##
##programmer = Programmer.new
##programmer.greed
##
##baby = Baby.new
##baby.greed
##
###puts programmer.is_a? Human #rubyはこれでいいんだ。エラーじゃない。
###puts Programmer.superclass
##
##
##puts programmer.kind_of? Object
###↑↓どちらもtrue
##puts programmer.kind_of? Programmer
###is_a?メソッドと同じkind_of?
##puts programmer.instance_of? Programmer
##
##puts Programmer === programmer
##
###Programmerクラスのインスタンスかどうか調べる。
###puts <<1,<<-3,5,<<6,8,<<~9,<<-11
###2
###1
###4
###     3
###7
###6
###        10
###9
###   12
###     11
####-末尾のインデントが自由、ヒアドキュメント内のインデントはそのまま出力される。
####~末尾のインデントが自由、ヒアドキュメント内のインデントが除去
####<<末尾にインデントを入れてはいけない、ヒアドキュメント内のインデントはそのまま出力される。
##
###str = <<~text
###  {
###   name => "hello",
###   email=> "kjkfais@mail.com",
###   old=> 24
###  }
###text
###
###puts str.gsub(/:(\w+) *=> */,'\1:')
##
