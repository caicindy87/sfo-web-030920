class Bird
  attr_reader :birth_location
  
  @@birds = []
  def initialize(birth_location)
    @birth_location = birth_location
    @@birds << self
  end

  def self.all
    @@all
  end
end


# do i want to use inheritance(inheriting from other classes), or composition (modules)

# is-a vs has-a