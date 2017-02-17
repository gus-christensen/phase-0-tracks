puts "what's the the hamster's name?"
hamster = gets.chomp
puts "how loud is the hamster? (1-10)"
volume = gets.chomp
if volume == ' '
	volume = nil
else 
	volume = volume.to_i
end
puts "what's the fur color?"
fur_color = gets.chomp
puts "is the hamster a good candidate for adoption? (y or n)"
candidate = gets.chomp
if candidate == "y"
	candidate = true
else candidate = false
end
puts "about how old is the hammmy?"
age = gets.chomp
if age == ' '
	age = nil
else 
	age = age.to_i
end
puts "Okay, cool. We've logged a '#{hamster}'; Age: #{age}; color: #{fur_color}; good candidate? #{candidate}; Volume level: #{volume}" 