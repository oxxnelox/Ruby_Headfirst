# Вгадай моє число
# Написана мною
puts "Welcome to 'Get My Number!'"

#Отримання імя Гравця
print "What's your name? "
input = gets
name = input.chomp

puts "Welcome #{name}!"

#Збереження випадкового числа
puts "I've got a random number between 1 and 100"
puts "Can you guess it?"
target = rand (100) + 1

#Відслідковування кількості помилок
num_guesses = 0

#Ознака продовження гри
guessed_it = false

until num_guesses == 10 || guessed_it


puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess "
guess = gets.to_i

num_guesses += 1
#Порівняння введеного числа з числом яке загадали
# і ввід відповідного повідомлення
if guess < target
puts "Oops. Your guess was Low. Try one more time!"
elsif guess > target
  puts "Your guess wos High. You can try one more time"
elsif guess == target
  puts "Good job, #{name} !"
  puts "You guessed my number in #{num_guesses} guesses!"
  guessed_it = true
end

end

#Якщо спроб більше не залишилось, сказати загадане число
unless guessed_it
  puts "Sorry. You did not get my number (it was #{target}.)"
end
