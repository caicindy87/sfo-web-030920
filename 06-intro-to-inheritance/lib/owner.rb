class Owner < Animal   # Owner is-a  __animal____
  attr_reader :species
  attr_accessor :mood, :name

  @@all = []
  def initialize(name)
    super
    @species = "human"
    @pets = {} # not how we would normally and pets and owners, there's a better way (join model)
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets

  end
end
