class FundingRound
  attr_reader :startup, :venture_capitalist, :investment

  @@all = []
  def initialize(startup_obj, vc_obj, type, investment)
     @investment = investment <= 0 ? 0.0 : investment.to_f
     @type = type
     @venture_capitalist = vc_obj
     @startup = startup_obj
     @@all << self
  end

  def self.all
    @@all #returns all instances of funding_round
  end 

end


# - `FundingRound#startup`
#   - returns the startup object for that given funding round
#   - Once a funding round is created, I should not be able to change the startup #read_only
# - `FundingRound#venture_capitalist`
#   - returns the venture capitalist object for that given funding round
#   - Once a funding round is created, I should not be able to change the venture capitalist #read_only

# - `FundingRound#type`
#   - returns a **string** that is the type of funding round
#   - Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.

# - `FundingRound#investment`
#   - returns a **number** that is the amount invested during this funding round
#   - This should be a float that is not a negative number.


# - `FundingRound.all`
#   - returns all of the funding rounds
