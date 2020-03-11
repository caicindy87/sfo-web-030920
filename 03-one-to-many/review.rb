## Review
require 'pry'
# *What have we learned so far?*

# - iterators

# - class methods vs instance methods

# - class variables (@@all) vs instance methods (@name) vs local variables (name) vs global variable ($im_global)

# - initialize (Class.new) - spelling counts!

# - setter vs getter OR reader vs writer

# - attr_writer, attr_reader, attr_accessor

# - self

class CellPhone
  attr_accessor :display, :shape #read and write
  # attr_writer :shape
  # attr_reader :shape

  @@all = []
  def initialize(shape, display)
    @display = display
    @shape = shape
    @@all << self
  end


  def self.all
    #self => class
    @@all
  end

end

iphone_3gs = CellPhone.new("oval", "LCD")
samsung = CellPhone.new("circle", "LCD")
samsung.shape