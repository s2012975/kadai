def fizz_buzz(number)
  puts "結果は…"
  if number % 15 == 0
    puts "FizzBuzz"
  elsif number % 5 == 0
    puts "Buzz"
  elsif number % 3 == 0
    puts "Fizz"
  else
    number = number.to_s
    puts number
  end
end

n = gets.to_i

fizz_buzz(n)

for i in 1..100 do
  fizz_buzz(i)
end