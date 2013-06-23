class SentenceController < ApplicationController
  
  def index
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  end

  def next
  	@sentence = Sentence.first(:offset => rand(Sentence.count))
  		render ('index')
  end

  def list123
    @sentence = Sentence.all
  end

  def new123
    @sentence = Sentence.new(params[:sentence])
  end

  def create
  	@sentence = Sentence.new(params[:sentence])
    if @sentence.save
      flash[:notice] = "We saved your advice!"
      redirect_to(:action => 'index')
    else
      render('new123')
    end
  end

  def edit123
    @sentence = Sentence.find(params[:id])
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @sentence.update_attributes(params[:sentence])
      flash[:notice] = "Your advice is updated!"
      redirect_to(:action => 'list123')
    else
      render('edit')
    end
  end



end
