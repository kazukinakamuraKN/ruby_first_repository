#argument
def helloWorld(msg)
  puts msg
end

# default argument
def greed(msg = 'hello')
  puts msg
end

# keyword argument

hash = {ruby: "rails",python: "Django"}

def piyo(msg , ruby, python)
  puts msg
  puts ruby
  puts python
end

def variable(*msg)
  puts *msg
end

#option argument error
#def option(**msg)
#  p msg
#endzzz

variable("hey","goodbye","hrrrere")

helloWorld("helloworld")
greed
greed("hey")
piyo("hello",hash[:ruby],hash[:python])

