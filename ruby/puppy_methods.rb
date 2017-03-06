class Puppy

  def initialize
    puts "Intializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
   # puts "Woofs".times(int)
    puts "Woof! "*int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
    age * 7
  end

  def eat_cat
    puts "Meoouch"
  end

  def dinner_time
 #   puts "Thanks ! only #{meals} meals left"
 #   meals-=1
  end

end

fido=Puppy.new
p fido.fetch("bone")
p fido.speak(3)
p fido.roll_over
p fido.dog_years(4)
p fido.eat_cat
p fido.dinner_time









class Integer_Fun
	def initialize
		puts "found new instance of Integer_Fun"
	end

	def modulotwo(y)
    puts "I'm a computer, and you expect me to do math??"
	end

	def square
		puts "Yup, still not doing any math for you."
	end
end

array = []
count = 1
while count < 51
	array << "integer" + count.to_s
	count += 1
end
p array

Integer_Fun_Hash = {}
array.map!{|x| x.to_sym}
p array
array.each{|x| x = Integer_Fun.new} 
array.each{|x| Integer_Fun_Hash[x.to_sym] = x[-1].to_i}
p Integer_Fun_Hash
#something to do with strings becoming variables.. not properly initializing? 
#err:line80
Integer_Fun_Hash.each{|x, y| x.modulotwo(y)}



