class SentenceController < ApplicationController
  
  def index
  	@sentence = Sentence.first(:offset => rand(Sentence.count)) 
    @sentence_home = Sentence.new(params[:sentence1])
  end

  

  def list123
    @sentence = Sentence.order("created_at DESC")
  end

  def new123
    @sentence = Sentence.new(params[:sentence])
  end

  def create_home
  	@sentence_home = Sentence.new(params[:sentence1])
    if @sentence_home.save
      flash[:notice] = "We saved your advice!"
      redirect_to(:action => 'index')
    else
      render('new123')
    end
  end

  def create
    @sentence = Sentence.new(params[:sentence1])
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

  def destroy
    @sentence = Sentence.find(params[:id]).destroy
    flash[:notice] = "Your Advice is gone!"
    redirect_to(:action => 'list123')
  end



end
