class LocationsController < ApplicationController

  def new
    @location = Location.new(params[:location])
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
    @location = Location.find(params[:id])
  end

end
