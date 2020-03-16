require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Dummy data == 'seeds'

new_startup = Startup.new("Flatiron School", "Programming Education", "Avi Flombaum")
new_startup1 = Startup.new("Facebook", "Social Media", "Mark Zuckerburg")
new_startup2 = Startup.new("IDK", "Content Platform", "Mark Zuckerburg")
new_startup3 = Startup.new("Uber", "Rideshare", "some person")

# new_vc = VentureCapitalist.new

vc1 = VentureCapitalist.new("Warren Buffet", 654000000000)   
vc2 = VentureCapitalist.new("Oprah Winfrey", 500000000)   
vc3 = VentureCapitalist.new("Mark Cuban", 1000000000)

fr1 = FundingRound.new(new_startup, vc1, "Series A", 100000)
fr2 =  FundingRound.new(new_startup1, vc2, "Seed", 300000)
fr3 = FundingRound.new(new_startup3, vc1, "Series B", 100000000000)

# (startup_obj, vc_obj, type, investment)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line