class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
end

puts "We've closed the class definition."
puts "So we have to use the path notation to reach the contant."
puts "The venues are:"
puts Ticket::VENUES
#venues = Ticket::VENUES
Ticket::VENUES << "High School Gym"
puts Ticket::VENUES