class SentencehomeController < ApplicationController

  def index
    @sentencehome = Sentence.new(params[:sentencehome])
  end


  def create
    @sentencehome = Sentence.new(params[:sentencehome])
    if @sentencehome.save
      flash[:notice] = "We saved your advice!"
      redirect_to(:action => 'index')
    else
      render('list123')
    end
  end

    def update
    @sentencehome = Sentence.find(params[:id])
    if @sentencehome.update_attributes(params[:sentencehome])
      flash[:notice] = "Your advice is updated!"
      redirect_to(:action => 'list123')
    else
      render('edit')
    end
  end



end
