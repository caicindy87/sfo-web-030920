class VentureCapitalist
  attr_reader :name, :total_worth
# what are each object's attributes?

  @@all = []
  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club
    # good array method for filtering?
    VentureCapitalist.all.select{|v_c| v_c.total_worth >= 1000000000}
  end

end






