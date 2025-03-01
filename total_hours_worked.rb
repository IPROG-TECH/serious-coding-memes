require 'time'

puts "Timein:"
time_in = gets.chomp

puts "Timeout:"
time_out = gets.chomp

total_hours_worked = ((Time.parse(time_out) - Time.parse(time_in)) / 3600).to_i - 1

puts "Total Hours Worked: #{total_hours_worked}"
