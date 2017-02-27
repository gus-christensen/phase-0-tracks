#break variable
choice = ""

#database
allData = []

while choice != "done"
	#get input
	puts "first name:"
	firstName = gets.chomp
	puts "last name:"
	lastName = gets.chomp

	#make initial string
	swappedName = lastName.downcase + " " + firstName.downcase

	#convert to array
	nameArray = swappedName.chars

	#character manipulation algorithm
	nameArray.map!{|letter| if "aeiou".reverse.chars.include?(letter) then letter = "aeiou".reverse.chars["aeiou".reverse.chars.index(letter) - 1] elsif "abcdfghjklmnpqrstvwxyz".reverse.chars.include?(letter) then letter = "abcdfghjklmnpqrstvwxyz".reverse.chars["abcdfghjklmnpqrstvwxyz".reverse.chars.index(letter) - 1] else letter end}

	#convert back to string
	newName = nameArray.join('')
	#capitalize
	newName = newName.split(" ")
	newName.map!{|x| x.capitalize}
	newName = newName.join(' ')

	puts "Your fake name shall be:"
	puts newName

	#push to array of arrays
	allData.push([firstName + " " + lastName, newName])

	puts "press Enter to do it again! or type 'done'"
	choice = gets.chomp
end

#results
puts "Here's all your results:"
allData.each{|x, y| puts "The name '#{x}' was changed to '#{y}!' cute!"}

