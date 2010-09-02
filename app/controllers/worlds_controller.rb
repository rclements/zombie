class WorldsController < ApplicationController
  before_filter :load_world
  before_filter :load_new_world, :only => [:new, :create]

  protected
  def load_new_world
    @world = World.new(params[:world])
  end

  public
  def new
  end
  
  def create
    if @world.create
      flash[:notice] = "The world is yours!"
      redirect_to world_path
    else
      flash[:error] = "There was a problem creating the world."
      render :action => 'new'
    end
  end

  def show
    @world = World.find(params[:id])
  end

  def destroy
    @world = World.find(params[:id])
    if @world.destroy
      flash[:notice] = "The world was destroyed."
      redirect_to worlds_path
    else
      flash[:error] = "There was a problem destroying the world."
      render :action => 'show'
    end
  end

end
