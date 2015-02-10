class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  # acts_as_votable

  # def score
  #   self.get_upvotes.count - self.get_downvotes.count
  # end
end
