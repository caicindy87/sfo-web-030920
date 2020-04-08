class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def featured_post
    self.posts.order(likes: :desc).first
  end

end
