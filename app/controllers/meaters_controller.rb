class MeatersController < ApplicationController

  def index
  end

  def new
    @meater = Meater.new
  end

  def create
    @meater = Meater.new(meater_parameters)
  end

  def show
  end

  def edit
  end

  private

  def set_meater
    @meater = Meater.find(params[:id])
  end

  def meater_parameters
  end
end
