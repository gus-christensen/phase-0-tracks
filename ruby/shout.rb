#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end

#	def self.yelling_happily(words)
#		words + " :DDDDDDDDDDDDDDDDDDDDDDDDDDDDD!!!!!!!!!!!!!!"
#	end
#end

#p Shout.yell_angrily("darnit!")
#p Shout.yelling_happily("MIAMI")



#the mixin version
module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + " :DDDDDDDDDDDDDDDDDDDDDDDDDDDDD!!!!!!!!!!!!!!"
	end
end

class Tiny_Baby
	include Shout
end

class Royals_Fan
	include Shout
end

tiny = Tiny_Baby.new
p tiny.yelling_happily("sdlkfsldkfjlskdflsdfkjlsdkfl")
tony = Royals_Fan.new
p tony.yell_angrily("whyyyy")