class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		if @reindeer_ranking.include?(reindeer)
			@reindeer_ranking.delete(reindeer)
			@reindeer_ranking.push(reindeer)
		end
	end

end

jay = Santa.new("non-conforming", "prefers not to say")
jay.eat_milk_and_cookies("ocp")
jay.speak
p jay.gender
jay.gender = "exhausted by the idea of it"
jay.ethnicity
p jay.get_mad_at("Dancer")
jay.celebrate_birthday
p jay.age
p jay.gender

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

p santas

#debug: @age moved from attr_reader to attr_accessor
def Santa_Generator(x)
	genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
	ethnicities = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	count = 0
	while count < x
		santa = Santa.new(genders.sample, ethnicities.sample)
		santa.age=(rand(140))
		puts "Santa Numero #{count + 1}:"
		p santa
		count +=1
	end
end

Santa_Generator(120)