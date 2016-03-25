## ADA_student_rand_number.rb 
#
# this snippet generates the student id 
#
##

number_id = []

5.times do
	student_id = rand(111111..999999) 
	number_id.push(student_id)
end

puts number_id  # print debuggin'
