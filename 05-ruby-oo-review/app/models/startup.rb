class Startup
  attr_accessor :name
  attr_reader :founder, :domain

  # attributes = name<#string>, domain<#string>, founder<#string>
  @@all = []
  def initialize(name, domain, founder)
    @name = name
    @domain = domain
    @founder = founder
    @@all << self
  end

  def self.all
    @@all
  end

  def pivot(domain, name)
    @domain = domain
    @name = name
  end

  def self.find_by_founder(founder_name)
    # use what you know (#select), returns mulitple matches - access the element at 0 index
    # explore what methods will work for this task (find, find_index)
    founders_companies = @@all.select{|startup| startup.founder == founder_name}
    founders_companies[0]
  end

  def self.domains
    Startup.all.map{|startup| startup.domain}.uniq
  end

  def sign_contract(vc_obj, type, investment)
    new_fr = FundingRound.new(self, vc_obj, type, investment.to_f)
  end

  def funding_rounds
    FundingRound.all.select{|fr| fr.startup == self}
  end

  def num_funding_rounds
    # get funding rounds belonging to this startup
    # get the number of funding rounds
    # SSoT == join table
    self.funding_rounds.count #self is an instance of startup
  end

  def total_funds
    # how do I get an array of all investments? (FundingRound - investment info)
    # return sum of investments
    investments = self.funding_rounds.map{|fr| fr.investment}
    investments.reduce(:+)
    # count = 0
    # self.funding_rounds.each{|fr| count += fr.investment }
    # count
  end


end




# - `Startup #total_funds`
#   - Returns the total sum of investments that the startup has gotten

# - `Startup#investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company
# - `Startup#big_investors`
#   - Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club




# DONE: 
# - `Startup#sign_contract`
#   - given a **venture capitalist object** , type of investment (as a string), and the amount invested (as a float) (args), 
# creates a new funding round and associates it with that startup and venture capitalist.

# - `Startup#num_funding_rounds`
#   - Returns the total number of funding rounds that the startup has gotten