#use a bunch of prompts to get keys for a hash
#properly assemble a hash
#print the hash
#prompt for errors (y/n)
#prompt for which key requires updating
#replace new data in the hash
#print updated hash


#ASSEMBLE THE HASH
newClient = {}
puts "client name?"
newClient[:name] = gets.chomp

puts "age?"
newClient[:age] = gets.chomp

puts "# of children?"
newClient[:kids] = gets.chomp

puts "Pets? (yes or no)"
petBoolean = gets.chomp
if petBoolean == "yes"
	newClient[:pets] = true
else
	newClient[:pets] = false
end

puts "Decor theme?"
newClient[:theme] = gets.chomp

roomsArray = []
room = nil
until room == "done"
	puts "List of rooms? (type done when finished)"
	room = gets.chomp
	roomsArray << room
end
roomsArray.delete("done")
newClient[:rooms] = roomsArray

#CHECK FOR MISTAKES
p newClient
puts "did you type everything right? (yes or no"
again = gets.chomp

if again == "yes"
	puts "nicely done."
else 
	#FIX MISTAKES
	puts "which one piece of data is wrong?"
	error = gets.chomp
	if error == "rooms"
		roomsArray = []
		room = nil
		until room == "done"
			puts "List of rooms? (type done when finished)"
			room = gets.chomp
			roomsArray << room
		end
		roomsArray.delete("done")
		newClient[:rooms] = roomsArray
	elsif error == "name"
		puts "correct client name is?"
		newClient[:name] = gets.chomp
	elsif error == "age"
		puts "correct age?"
		newClient[:age] = gets.chomp
	elsif error == "kids"
		puts "# of children?"
		newClient[:kids] = gets.chomp
	elsif error = "pets"
		puts "Pets? (yes or no)"
		petBoolean = gets.chomp
		if petBoolean == "yes"
			newClient[:pets] = true
		else
			newClient[:pets] = false
		end
	else
		puts "Decor theme?"
		newClient[:theme] = gets.chomp
	end
	#PRINT UPDATED INFO
	puts "updated info is:"
	p newClient
end



