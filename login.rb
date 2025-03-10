require "csv"

CSV_FILE = "users.csv"

def authenticate(username, password)
 return false unless File.exist?(CSV_FILE)

 CSV.foreach(CSV_FILE, headers: true) do |row|
  return true if row["username"] == username && row["password"] == password
 end

 false
end

puts "Enter your username: "
username = gets.chomp

puts "Enter your password: "
password = gets.chomp

if authenticate(username, password)
 puts "Login successfully."
else
 puts "Invalid username or password."
end
