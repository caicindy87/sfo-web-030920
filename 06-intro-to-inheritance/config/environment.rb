require 'pry'

# concerns folder holds modules (convention in Rails)

require_relative '../lib/composing_classes/models/bird.rb'
require_relative '../lib/composing_classes/concerns/flyable.rb'
require_relative '../lib/composing_classes/concerns/gobbleable.rb'
require_relative '../lib/composing_classes/concerns/turkeylike.rb'
require_relative '../lib/composing_classes/concerns/quackable.rb'
require_relative '../lib/composing_classes/concerns/ducklike.rb'

require_relative '../lib/animal.rb'
require_relative '../lib/cat.rb'
require_relative '../lib/dog.rb'
require_relative '../lib/fish.rb'
require_relative '../lib/owner.rb'
require_relative '../lib/composing_classes/models/turkey.rb'
require_relative '../lib/composing_classes/models/duck.rb'

duck = Duck.new("Arkansas")
turkey = Turkey.new("Utah")

binding.pry
0