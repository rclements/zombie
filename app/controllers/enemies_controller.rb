class EnemiesController < ApplicationController

  def index
    @enemies = Enemy.all
  end

  def new
    @enemy = Enemy.new(params[:enemy])
  end

  def show
    @enemy = Enemy.find(params[:id])
  end

  def edit
    @enemy = Enemy.find(params[:id])
  end

  def update
    @enemy = Enemy.find(params[:id])
    if @enemy.update_attributes(params[:enemy])
      flash[:notice] = "The enemy was successfully edited."
      redirect_to :action => 'show'
    else
      flash.now[:notice] = "There was a problem updating the enemy."
      render :action => 'edit'
    end
  end

  def create
    @enemy = Enemy.new(params[:enemy])
    if @enemy.save
      flash[:notice] = 'The enemy was created successfully.'
      redirect_to enemies_path
    else 
      flash[:error] = 'There was a problem creating the enemy.'
      render :action => 'new'
    end
  end

  def destroy
    @enemy = Enemy.find(params[:id])
    if @enemy.destroy
      flash[:notice] = 'The enemy was successfully destroyed!'
      redirect_to enemies_path
    else
      flash[:error] = 'The enemy is still alive...'
      render :action => 'show'
    end
  end

end
