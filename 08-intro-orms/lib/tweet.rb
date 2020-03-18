# check Tweets table for confirmation: 
# DB[:conn].execute('SELECT * FROM tweets;')

class Tweet
  attr_accessor :message, :id
  attr_reader :username
  
  

  @@all = []
  def initialize(props_hash={id: nil})    # keyword arguments
    @id = props_hash['id']
    @message = props_hash['message']
    @username = props_hash['username']
    save
    @@all << self
  end

  def save
    DB[:conn].execute("INSERT INTO tweets (message, username) VALUES (?, ?); ", @message, @username) # => []
    new_id = DB[:conn].execute("SELECT id FROM tweets ORDER BY id DESC")[0]["id"]
    self.id = new_id
  end

  # get all tweet records from the DB, turn into objects, and save array to in @@all
  all_tweets = DB[:conn].execute("SELECT * FROM tweets;")
  all_tweets = all_tweets.map{|tweet_hash| Tweet.new(tweet_hash)}
  @@all = all_tweets
  
  def self.all
    @@all
  end

  # parameterized input - arguments in SQL
  # persist to DB
  

  def username=(new_username)
    @username = new_username
    # add in SQL
    DB[:conn].execute("UPDATE tweets SET username = ? WHERE tweets.id = ?", new_username, @id)
  end
end
