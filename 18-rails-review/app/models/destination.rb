class Destination < ApplicationRecord
 
  has_many :posts
  has_many :bloggers, through: :posts

  def recent_post
    self.posts.last(5)
  end

  def avg_age
    self.bloggers.sum(:age) / self.bloggers.count
  end
end
