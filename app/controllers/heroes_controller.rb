class HeroesController < ApplicationController

  public
  def index
    @heroes = Hero.all
  end

  def new
    @hero = Hero.new(params[:hero])
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    if @hero.update_attributes(params[:hero])
      flash[:notice] = "The hero was successfully edited."
      redirect_to :action => 'show'
    else
      flash.now[:notice] = "There was a problem updating the hero."
      render :action => 'edit'
    end
  end

  def create
    @hero = Hero.new(params[:hero])
    if @hero.create
      flash[:notice] = 'The hero is ready for battle'
      redirect_to '/'
    else
      flash[:notice] = 'There was a problem creating a hero'
      render :action => 'new'
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    if @hero.destroy
      flash[:notice] = "The hero has retired."
      redirect_to '/'
    else
      flash[:error] = "There was a problem retiring the hero."
      render :action = 'show'
    end
  end


end
