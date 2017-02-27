grocery_list = ["bread", "butter", "cereal", "milk"]
specialty_items = {petStore: "treats", pharmacy: "shampoo", bodega: "cheap cigarettes"}


grocery_list.map! do |items|
	items.reverse
end

grocery_list.each do |x|
	puts "#{x} is a food?"
end

specialty_items.each do |place, thing|
	puts "we have to go to the #{place} to get #{thing}"
end




newArray = [1, 3, 5, 7, 9]
newHash = {
	:a => 1,
	:b => 2,
	:c => 3,
	:d => 4
	}
p newArray
p newHash

#delete_if <5
newArray.delete_if {|x| x < 8 && x > 5}
newHash.delete_if{|key, value| value == 1}
p newArray
p newHash

#keep_if   <5
newArray.keep_if{|x| x % 3 == 0 || x == 1}
newHash.keep_if{|key, value| value % 2 == 0}
p newArray
p newHash

#different filter iff satisfies condition

newArray.take_while {|x| x < 9}
newHash.reject {|key, value| value = 4}
p newArray
p newHash

#remove items until block condition is false (might not find hash solution)
newArray = newArray.drop_while {|x| x != 9}
newHash = newHash.drop_while {|key, value| value != 4}
p newArray
p newHash

