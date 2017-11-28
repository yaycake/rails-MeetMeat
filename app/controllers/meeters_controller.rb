class MeetersController < ApplicationController

  before_action :set_meeter, only: [:show, :edit]

  def new
    @meater = Meater.new
  end

  def create
    @meater = Meater.new(meeter_parameters)
  end

  def show
  end

  def edit
    @meater.update(meeter_parameters)
  end

  private

  def set_meeter
    @meater = Meater.find(params[:id])
  end

  def meeter_parameters
    params.require(:meater).permit(:photo, :last_name, :first_name, :display_name)
  end
end
