count = 0
while count < 11
  p count 
  count += 1
end

sam_recipe = ["pizza", "sushi", "burger", "sandwich"]
sally_lang = ["english", "chinese", "french", "korean"]

if sam_recipe.length > 10 && sally_lang > 5
  p "Date"
else
  p "Dont date"
end
 
i = 0

if sam_recipe.include?("crepes") || sally_lang.include?("french")
  p "Get marry"
else
  p "Don't get marry"
end


i = 0
users = []
while i < 2
  puts "First name: "
  first_name = gets.chomp
  puts "Last name: "
  last_name = gets.chomp
  puts "Email: "
  email = gets.chomp
  user = {
    first_name: first_name,
    last_name: last_name,
    email: email,
  }
  users << user
  i += 1

end
p users