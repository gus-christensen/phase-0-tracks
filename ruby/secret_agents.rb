#define methods 

#encrypt uses an until loop to apply .next to each character in a string
#use .tr to retain spaces and prevent "z".next issues
def encrypt(string)
	string.tr("z", "!")
	x = 0
	until x == string.length
		string[x] = string[x].next
		x += 1
	end
	string.tr('!', ' ') 
	string.tr('"', 'a')
end

#instead of .next, decrypt uses an algorithm for the previous index of "abcdefghijklmnopqrstuvwxyz !"
#use .tr to retain spaces
def decrypt(string)
	string.tr(' ', '!')
	string.tr('a', ' ')
	string2 = "abcdefghijklmnopqrstuvwxyz !"
	y = 0
	until y == string.length
		string[y] = string2[string2.index(string[y]) - 1]
		y += 1
	end
end

#driver code
puts "do you need to encrypt or decrypt a password?"
choice = gets.chomp
puts "what is your password?"
password = gets.chomp
encryption = encrypt(password)
decryption = decrypt(password)
both = decrypt(encrypt(password))

#here's the meltdown. 
#lines 46-7 are functioning. 
#lines 52-3 also work. 
#lines 48-51 DON'T WORK.
#I know that I shouldn't need to use extra variables for encryption/decryption/both 
#(and add the extra step for the interpolation)
#but ive tried many variations, 
#and this is the only way that 46-47 are producing an output.
if choice == "encrypt"
	puts "#{encryption}"
elsif choice == "decrypt"
	puts "#{decryption}"
elsif choice == "both"
	puts "#{both}"
else
	puts "Try again, I can only accept 'encrypt' or 'decrypt', or perhaps 'both'"
end


