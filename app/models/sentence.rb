class Sentence < ActiveRecord::Base
  attr_accessible :name, :twitterhandle, :email, :advice

  validates :twitterhandle, presence: true
  validates :advice, presence: true
  
end

