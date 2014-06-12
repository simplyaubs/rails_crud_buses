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

  private
  def bus_params
    params.require(:bus).permit(:route, :direction)
  end

end