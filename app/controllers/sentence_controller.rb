class SentenceController < ApplicationController
  
  def index
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  end

  def next
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  		render ('index')
  end





end
