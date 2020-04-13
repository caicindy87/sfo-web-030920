class Blogger < ApplicationRecord
   # Blogger -< Post >- Destination
   has_many :posts
   has_many :destinations, through: :posts
   validates :name, uniqueness: true
   validates :age, numericality: { greater_than: 0 }
   validates :bio, length: { minimum: 30 }

   def total_likes
      self.posts.sum(:likes)
   end

end
