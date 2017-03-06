module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + " :DDDDDDDDDDDDDDDDDDDDDDDDDDDDD!!!!!!!!!!!!!!"
	end
end

p Shout.yell_angrily("darnit!")
p Shout.yelling_happily("MIAMI")