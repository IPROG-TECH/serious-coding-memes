puts "Enter Your Grade: "
grade = gets.chomp.to_i
puts "Grade Status: #{ grade >= 75 ? 'Pass' : 'Fail'}"
