require 'pry'

require_relative './review'
require_relative './tweet'
require_relative './user'

matt = User.new('matjo')
radniel = User.new('radguy')

tweet1 = Tweet.new('This is my first tweet, hooray!', matt)
tweet2 = Tweet.new('This is my second - give me followers!', matt)

binding.pry
puts "Get fixed or die pryin'."