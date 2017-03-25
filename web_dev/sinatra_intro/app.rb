# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/great_job' do
  persons_name = params[:persons_name]
  if persons_name
    "Good job, #{persons_name}!"
  else
    "Good job!"
  end
end




# write a GET route with
# route parameters
get '/contact/:address' do
  address = params[:address]
  "address is #{address}"
end

get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/:int1/add/:int2' do
  int1 = params[:int1].to_i
  int2 = params[:int2].to_i
  sum = int1 + int2
  "The sum of #{int1} and #{int2} is #{sum}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
