class ChartsController < ApplicationController
  require 'yahoo_stock'
  
  def new
    @chart=Chart.new
  end
  
  def create
    @chart=Chart.new(params[:chart])
    @chart.save!
    redirect_to chart_path(@chart)
  end
  
  def update
    @chart=Chart.update_attributes(params[:chart])
    redirect_to root
  end
  
  def home
  end
  
end
