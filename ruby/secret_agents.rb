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
	x = 0
	until x == string.length
		string[x] = string2[string2.index(string[x]) - 1]
		x += 1
	end
end
#the bug appears to be in the decrypt method
#tho this method has been confirmed successful on its own



#driver code
puts "do you need to encrypt or decrypt a password?"
choice = gets.chomp
puts "what is your password?"
password = gets.chomp




#here's the meltdown. 
#lines 48-51 DON'T WORK.
#46-47 are now producing an output. 
#52-3 have produced output in every variation.
if choice == "encrypt"
	puts encrypt(password)
elsif choice == "decrypt"
	puts decrypt(password)
elsif choice == "both"
	puts decrypt(encrypt(password))
else
	puts "Try again, I can only accept 'encrypt' or 'decrypt', or perhaps 'both'"
end


