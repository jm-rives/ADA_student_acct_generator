# werking snippet
## ADA_student_name_array.rb 
#
# this snippet creates the array of student names by prompting the user to enter them to five times
#
###

student_names = []

5.times do
	puts "Please enter the students first and last name: " # works
	name = gets.chomp # works
	name = name.upcase # works
	#puts name # print debuggin'
	student_names.push(name)
end

puts student_names # print debuggin'

