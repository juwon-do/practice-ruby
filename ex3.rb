puts “Greetings! What is your year of origin?'
origin == gets.chomp
if origin < 1900
  puts ‘That’s the past!’
elseif origin > 1900 && origin < 2020
  puts “That’s the present!”
elsif
  puts “That’s the future!”