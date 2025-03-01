# RULES
# papel beats bato
# gunting beats papel
# bato beats gunting

CHOICES = {
 "papel" => "bato",
 "gunting" => "papel",
 "bato" => "gunting"
}

puts "Choose from papel, gunting, bato: "
player_choice = gets.chomp.downcase
computer_choice = CHOICES.keys.sample

if(player_choice == computer_choice)
 puts "Draw!"
 exit
end

if(CHOICES[player_choice] == computer_choice)
 puts "You Win!"
else
 puts "Computer Wins!"
end
