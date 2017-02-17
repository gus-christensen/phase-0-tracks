puts "Hello, person with surveys. How many surveys are we processing today?"
survey_count = gets.chomp.to_i

while (survey_count > 0)
	puts "What is the candidate's name?"
	employee = gets.chomp

	puts "How old is the candidate?"
	age = gets.chomp
	puts "What year were you born?"
	age_plus_one_or_zero = 2017 - gets.chomp.to_i


	puts "Our company cafeteria serves garlic bread. Would the employee like some? (y or n)"
	likes_garlic = gets.chomp
	if likes_garlic == "y"
		likes_garlic = true
	elsif likes_garlic == "n"
		likes_garlic = false
	else 
		puts "You didn't answer y/n, start over!"
	end


	puts "Would the employee like to enroll in the company’s health insurance? (y or n)"
	wants_insurance = gets.chomp
	if wants_insurance == "y"
		wants_insurance = true
	elsif wants_insurance == "n"
		wants_insurance = false
	else 
		puts "You didn't answer y/n, start over!"
	end


	age_test = false
	if (age.to_i == age_plus_one_or_zero.to_i) || (age.to_i + 1 == age_plus_one_or_zero.to_i)
		age_test = true
	end

	allergies = Array.new
	done = ["done"]
	sunshine = ["sunshine"]
	while (allergies & done) == []
		puts "list any allergies, one at a time. input 'done' when finished."
		allergies.push(gets.chomp)
	end

	if employee == "Drake Cula"
		puts "Certainly a vampire."
	elsif employee == "Tu Fang"
		puts "Certainly a vampire."
	elsif !age_test && !likes_garlic && !wants_insurance
		puts "Almost certainly a vampire."
	elsif !age_test && (!likes_garlic || !wants_insurance)
		puts "Probably a vampire."
	elsif (allergies & sunshine) == ["sunshine"]
		puts "Probably a vampire."
	elsif age_test && (likes_garlic || wants_insurance)
		puts "Probably not a vampire."
	else
		puts "Results inconclusive."
	end

	survey_count = survey_count - 1
	puts "You have #{survey_count} more surveys to input."
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

	