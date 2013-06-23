class SentenceController < ApplicationController
  
  def index
  	@sentence = Sentence.all
  end
end
