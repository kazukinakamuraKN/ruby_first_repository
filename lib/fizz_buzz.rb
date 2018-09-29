#puts 'Hello World'
def fizz_buzz n
  if n % 15 == 0
    "FizzBuzz"
  elsif n % 3 == 0
    "Fizz"
  elsif n % 5 == 0
    "Buzz"
  else
    n.to_s
  end
end





#fizz_buzz 1
#fizz_buzz 3
#fizz_buzz 5
#fizz_buzz 15