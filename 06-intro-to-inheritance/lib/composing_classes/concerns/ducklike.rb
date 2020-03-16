# this class would mix-in flyable and quackable
# because a duck can fly and quack

module Ducklike
  include Quackable   # ducklike thing can quack
  include Flyable     # ducklike thing can fly

  def fly
    super
    "Ducks are chill."
  end
end