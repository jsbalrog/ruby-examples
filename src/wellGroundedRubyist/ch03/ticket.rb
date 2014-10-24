class Ticket
  attr_reader :venue, :date
  attr_accessor :price

  def Ticket.most_expensive(*tickets)
    tickets.max_by(&:price)
  end

  def initialize(venue, date)
    @venue = venue
    @date = date
  end

    VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
end

th = Ticket.new("Salt Palace", "11/12/13")
th.price=63.00
cc = Ticket.new("Convention Center", "12/13/14")
cc.price=3.00
fg = Ticket.new("Fairgrounds", "10/11/12")
fg.price=10.00

highest = Ticket.most_expensive(th, cc, fg)
puts "The highest-priced ticket is the one for #{highest.venue}."
