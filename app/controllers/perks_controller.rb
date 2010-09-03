class PerksController < ApplicationController

  def new
    @perk = Perk.new(params[:perk])
  end

  def show
    @perk = Perk.find(params[:id])
  end

  def edit
    @perk = Perk.find(params[:id])
  end

  def create
    @perk = Perk.new(params[:perk])
    if @perk.create
      flash[:notice] = "The Perk was successfully created."
      redirect_to perks_path
    else
      flash[:error] = "There was a problem creating the perk."
      render :action => 'new'
    end
  end

  def update
    @perk = Perk.find(params[:id])
    if @perk.update_attributes(params[:perk])
      flash[:notice] = "The perk was successfully updated."
      redirect_to perk_path
    else
      flash[:error] = "There was a problem updating the perk."
      render :action => 'edit'
    end
  end

  def destroy
    @perk = Perk.find(params[:id])
    if @perk.destroy
      flash[:notice] = "The perk was successfully destroyed."
      redirect_to perks_path
    else
      flash[:error] = "There was a problem destroying the perk."
      render :action => 'show'
    end
  end
  
end
