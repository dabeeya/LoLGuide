class Guide < ActiveRecord::Base
  belongs_to :champion
  belongs_to :user
  has_many :comments, as: :commentable
end
