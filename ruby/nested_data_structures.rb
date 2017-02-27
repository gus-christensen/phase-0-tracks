adoptable_animals = {
	:dogs => {
		:Bigfoot => { 
			breed: "wolfhound",
			age: 4,
			temperament: "chill, except cats",
			fixed: true
		},

		:Oreo => { 
			breed: "yorkie",
			age: 1,
			temperament: "shy",
			fixed: true
		},

		:Johnson => { 
			breed: "Yellow Lab",
			age: nil,
			temperament: "happy and perfect, except on a leash",
			fixed: true
		}
	},

	:cats => {
		:sheep => { 
			breed: "flamepoint",
			age: 4,
			temperament: "lazy, confident",
			fixed: false
		},

		:bonkers => { 
			breed: "tiger tabby",
			age: 1,
			temperament: "bonkers",
			fixed: true
		},

		:petunia => { 
			breed: "calico",
			age: nil,
			temperament: "very much has claws",
			fixed: true
		}
	},

	:reptiles => {
			:Joy => { 
				breed: "Red-foot tortoise",
				age: 12,
				temperament: "needs a home with a big vegetable garden",
			},

			:Ontario => { 
				breed: "Bearded Dragon",
				age: "7months",
				temperament: "loves being held and people-watching from his tank"
			},

			:Chaka => { 
				breed: "Red-tail Boa",
				age: 3,
				temperament: "Requires experienced snake handler; CANNOT not sleep in your bed."
			}
		}
}

p adoptable_animals[:dogs]
puts  
adoptable_animals[:cats].each{|key, value| p key}
puts  
puts "petunia's file: #{adoptable_animals[:cats][:petunia]}"
puts  
adoptable_animals[:reptiles].each{|key, value| p value.first}
puts
puts "these cats are not yet fixed, and are not ready for adoption:"
adoptable_animals[:cats].each{|key, value| if !value[:fixed] then p key end}

	
