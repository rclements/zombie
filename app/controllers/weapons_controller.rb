class WeaponsController < ApplicationController

  def new
    @weapon = Weapon.new(params[:weapon])
  end

  def index
    @weapons = Weapon.all
  end

  def create
    @weapon = Weapon.new(params[:weapon])
    if @weapon.create
      flash[:notice] = "The weapon has been created."
      redirect_to weapons_path
    else
      flash[:error] = "There was a problem creating the weapon."
      render :action => 'new'
    end
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def update
    @weapon = Weapon.find(params[:id])
    if @weapon.update_attributes(params[:weapon])
      flash[:notice] = "The weapon was successfully edited."
      redirect_to :action => 'show', :id => @project
    else
      flash.now[:notice] = "There was a problem updating the weapon."
      render :action => 'edit'
    end

  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def destroy
    @weapon = Weapon.find(params[:id])
    if @weapon.destroy
      flash[:notice] = "The weapon was destroyed."
      redirect_to weapons_path
    else
      flash[:error] = "There was a problem destroying the weapon."
      render :action => 'show'
    end
  end

end
