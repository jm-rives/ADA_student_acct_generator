## ADA_student_account_generator.rb
#
# this program elicits user input to generate a student data base that includes the student name
# a randomly generated student ID number
# builds a student email address using the above data
# and then prints the information out for each student in parallel
#
# inspired by Ada Developers Academy Jump start program found here https://github.com/Ada-Developers-Academy/jump-start
#
##

# can I do this with one (non-nested) times loop? Should I?
# ~ try compressing into functions on future refactoring

# arrays needed for program

# input generated from user input
student_names = []

# input generated randomly by program
number_id = []

# array for last names split from student_names
all_last_name = []

# array to hold email addresses
student_email = []

# array to hold student database
student_data = []

# variables needed for program
email_id = " " # empty string to set email id number to
last_name = " "  # variable for last name split from student_names
email_suffix = "@adadevelopersacademy.org"
student_info = " "

# mega loop begins

5.times do
	#----------
	# receives user input of student names
	#TODO(jrives): add error checking
	puts "Please enter the students first and last name: " # works
	name = gets.chomp # works
	# normalizes data
	name = name.upcase # works
	#puts name # print debuggin' werks
	student_names.push(name)
	# puts student_names # print debuggin' werks

	#----------
	# student id number randomly generated
	student_id = rand(111111..999999)
	number_id.push(student_id)
	# puts number_id # print debuggin' werks

	#----------
	# Student name and 1st initial
	# splits the student names out of the array
	break_array = student_names.shift

	# splits off first initial
	first_initial = break_array[0] # this line is triggering an error message, error triggered by poorly written test ilne 9 #
	# puts first_initial # print debuggin' werks

	#----------
	# splits last names off
	all_last_name = break_array.split
	# puts all_last_name # print debuggin' werks

	#----------
	# pushes off last name with ruby method
	last_name = all_last_name.last

	#----------
	# slices id number out of array
    #TODO(jrives): Don't store student_id in the number_id array and then shift it back out again,
    # just use it here.
	break_id = number_id.shift # werks as desired # changed from student_id

	#----------
	# type cast fixnum to string
	break_id = break_id.to_s

	#----------
	# slices desired segment of id number (now string type)
	email_id = break_id[3..6]
	# puts email_id # print debuggin' werks

	#----------
	# generates student's email address
	email = "#{first_initial}#{last_name}#{email_id}#{email_suffix}" # puts email # print debuggin' werks

	#----------
	# places student emails into array
	student_email.push(email)
	# puts student_email # print debuggin' werks

	#----------
	# populates student_data array
	student_info = "Student Name: #{name} Student Id: #{student_id} Student Email: #{email}"
	student_data.push(student_info)
end

# prints student data to standard out in parallel
puts student_data
