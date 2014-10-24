# Take a list of names.
# Randomly assign to each other
# such that you don't end up with
# your own name or anyone else
# in your family.

# 1. Get list from STDIN.
#puts 'Enter the names'
receivers = [
							["Hannah", "Elinor", "Talmage"],
							["Taylor", "Jameson", "Parker", "Rachel", "Ben"],
							["Abby", "Sam", "Rosie", "Joey", "Max", "Elsie"],
							["Claire", "Tanner"],
							["Annie", "Lizzie", "Spencer"],
							["Kael", "Brycen", "Seth", "William"],
							["Andrew"]
						 ] # Holds the names as entered by the user.

#while true
#  receiver = gets.chomp

#  if player == ''
#    break;

#  end

#  $receivers.push receiver

#end

puts 'You entered:'
receivers.each {|family| puts family}

unsorted_santas = []
receivers.each do |family| 
	receiver_family = family.sort{ rand }
	unsorted_santas << receiver_family	
end

santas = unsorted_santas.sort{rand}
puts 'Santas:'
santas.each{|family| puts "Family: ", family}

# 3. Match up
santas.each do |family|
	statement
end
