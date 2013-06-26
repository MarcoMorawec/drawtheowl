class SentencehomeController < ApplicationController

  def index
    @sentence = Sentence.new(params[:sentence])
  end


  def create
    @sentence = Sentence.new(params[:sentence])
    if @sentence.save
      flash[:notice] = "We saved your advice!"
      redirect_to(:action => 'index')
    else
      render('list123')
    end
  end



end
