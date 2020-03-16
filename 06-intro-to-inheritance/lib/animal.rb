class Animal 
  # Animal < PhysicalThings physical thing has a method called born
  attr_reader :name
  attr_accessor :mood

  include Ducklike  # what is the order in which these methods load? Which born will win?
  # A:

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def speak
    # I want part of this behavior
    puts "..."
  end
end
