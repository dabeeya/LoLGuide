class User < ActiveRecord::Base
  has_many :guides
  #user is not invovled in polymorphic association
  has_many :comments
  has_many :topics

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
