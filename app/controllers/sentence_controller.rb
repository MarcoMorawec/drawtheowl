class SentenceController < ApplicationController
  
  def index
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  end

  def next
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  		render ('index')
  end

  def new123
    @sentence = Sentence.new(params[:sentence])
  end

  def create
  	@sentence = Sentence.new(params[:sentence])
    if @sentence.save
      flash[:notice] = "We saved your sentence!"
      redirect_to(:action => 'index')
    else
      render('new123')
    end
  end






end
