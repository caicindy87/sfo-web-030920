# Tweet class definition
class Tweet
	attr_accessor :message
	attr_reader :user # no writer method for a user
	@@all = []

	def initialize(message, user)
		@message = message #datatype: String
		@user = user #datatype: User object
    @@all << self
	end

	def self.all
		@@all
	end

	# returns the username of the tweet's user
	def username
		@user.username
	end

end

