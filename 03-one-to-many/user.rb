# User class definition
class User
	attr_accessor :username
	@@all = []
	
	def initialize(username)
		@username = username
		@@all << self
	end

	def tweets
		Tweet.all.select{|tweet| tweet.user.username == self.username}
	end

	def post_tweet(message)
		new_tweet = Tweet.new(message, self)
	end

end