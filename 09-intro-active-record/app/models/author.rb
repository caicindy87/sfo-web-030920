class Author < ActiveRecord::Base
  #writes methods for us, builds out an ORM
  # def initalize(title)
  #   @title = title
  # end
  has_many :collaborations # always plural
  has_many :books, through: :collaborations
end