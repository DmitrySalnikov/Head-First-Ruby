puts "Welcome to 'Get My Number!'"
puts
print "What's your name? "
name = gets.chomp
puts "Welcome, #{name}!"
puts
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
total_guesses = 10
puts "You have only #{total_guesses} guesses."
puts
num_guesses = 1
while num_guesses <= total_guesses
	print "Make a guess: "
	guess = gets.to_i
	puts
	if guess == target
		puts "Good job, #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		return
	elsif guess > target
		puts "Oops. Your guess was HIGH."
	else
		puts "Oops. Your guess was LOW."
	end
	puts "You've got #{total_guesses - num_guesses} guesses left."
	puts
	num_guesses += 1
end
puts "Sorry. You didn't get my number. (It was #{target}.)"
