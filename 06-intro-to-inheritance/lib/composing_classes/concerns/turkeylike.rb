# mix this module into Turkey class / model

# this class would mix-in flyable and gobble-able
# because a turkey can fly and gobble

module Turkeylike # describes a turkey
  include Gobbleable  
  include Flyable

  def fly
    super
    "Turkey flying - majestic.."
  end
end 