class Sentence < ActiveRecord::Base
  attr_accessible :name, :twitterhandle, :email, :visible, :advice



  validates :twitterhandle, presence: true
  validates :advice, presence: true, :length => { :maximum => 140 }
  
end

