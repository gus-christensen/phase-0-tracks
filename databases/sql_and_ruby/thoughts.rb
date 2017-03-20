require 'sqlite3'

db = SQLite3::Database.new("thoughts.db")

# a table for your thoughts!
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS thoughts(
    id INTEGER PRIMARY KEY,
    thought VARCHAR(1200),
    day TIMESTAMP(8),
    tags VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

#EZ Methods
def entry(db, thought, day, tags)
	db.execute("INSERT INTO thoughts (thought, day, tags) VALUES (?, ?, ?)", [thought, day, tags])
end

def keyword_search(db, tag)
	db.execute("SELECT * FROM thoughts WHERE thought LIKE ? OR tags LIKE ?", [tag, tag])
end

#Would be fun to build out the date search to return all entries between two specified dates.
def date_search(db, date)
	db.execute("SELECT * FROM thoughts WHERE day LIKE ?", [date])
end


#DRIVER CODE

choice = nil
choices = ["Add", "Search", "Exit"]

until choices.include?(choice)
	puts "choices: Add, Search, Exit"
	choice = gets.chomp
end

if choice == "Add"
	puts "Date YYYYMMDD:"
	day = gets.chomp
	puts "Your thoughts?:"
	thought = gets.chomp
	puts "Applicable tags:"
	tags = gets.chomp

	entry(db, thought, day, tags)

	abort("Until next time<3")

elsif choice == "Search"
	search_choice = nil
	search_choices = ["Keyword", "Date"]
	until search_choices.include?(search_choice)
		puts "Search by: Keyword, Date"
		search_choice = gets.chomp
	end

	if search_choice == "Keyword"
		puts "Keyword:"
		keyword = "%" + gets.chomp + "%"
		
		answer = keyword_search(db, keyword)
		if answer.length == 0
			abort("Keyword not found")
		else
			puts "Entries Found: #{answer.length}"
			x = 0
			until x == answer.length
				puts "Date: " + answer[x][2].to_s
				puts "Thought: " + answer[x][1]
				puts "Tags: " + answer[x][3]
				x += 1
			end
		end
	else
		puts "YYYYMMDD:"
		thought_date = "%" + gets.chomp + "%"

		answer = date_search(db, thought_date)
		if answer.length == 0
			abort("Date not found")
		else
			x = 0
			until x == answer.length
			puts "Result##{x+1}"
			puts "Thought: " + answer[x][1]
			puts "Tags: " + answer[x][3]
			x += 1
			end
		end
	end
else
	exit
end










