class BusesController < ApplicationController

  def index
    @bus = Bus.new
    @buses = Bus.all
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save

      redirect_to buses_path
    else
      render :index
    end
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    @bus.update_attributes!(bus_params)

    redirect_to buses_path
  end

  def destroy
    @bus = Bus.find(params[:id]).delete

    redirect_to buses_path
  end

  private
  def bus_params
    params.require(:bus).permit(:route, :direction)
  end

end