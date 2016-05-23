## ADA_student_account_generator_v1.rb
#
# this program refactors ADA_student_account_generator.rb (found here https://goo.gl/xqT9Yz) which elicits user input to generate a student data base that includes the student name
# a randomly generated student ID number
# builds a student email address using the above data
# and then prints the information out for each student in parallel
# utilizing a hash.
#
# inspired by Ada Developers Academy Jump start program found here https://github.com/Ada-Developers-Academy/jump-start
#######################

student_data = []
name = 'not'
while true
    puts "Please enter the student's first and last name or quit to exit program: "
    name = gets.chomp
    # If name is 'quit' or 'Quit', we want to stop the program.
    if name.downcase == 'quit'
        puts "Thank you for using the Student account generator. The program has ended."
        break
    end

    name = name.split(' ').map {|w| w.capitalize}.join(' ')

    student_hash = {}
    student_hash[:name] = name

    # block that derives student id number
    student_id = rand(111111..999999)
    student_hash[:student_id] = student_id

    # block that derives email id
    email_id = student_id.to_s[3..6] #werks!
    # puts email_id # print debuggin'

    # block that derives first initial
    split_name = name.split(' ')
    first_initial = split_name[0][0]
    # block that derives last name
    last_name = split_name[1]

    # puts student_hash # werks
    # code snippets for email address generation
    email_suffix = "@adadevelopersacademy.org"
    email = "#{first_initial.downcase}#{last_name.downcase}#{email_id}#{email_suffix}"
    student_hash[:email] = email
    student_data.push(student_hash)
end

#outside loop
puts "\nStudent Roster:\n"
student_data.each do |student|
    puts "Student Name: #{student[:name]} Student ID: #{student[:student_id]} Student Email: #{student[:email]}"
end
