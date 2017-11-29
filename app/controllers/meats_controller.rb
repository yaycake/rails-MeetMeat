class MeatsController < ApplicationController
  before_action :set_meat, only: [:update, :edit, :show]

  def index
    @meats = Meat.where(user_category: "meat")
  end

  def update
    @meat = current_meater
    @meat.user_category = "meat"
    @meat.update(meat_parameters)
    redirect_to meat_path(current_meater)
  end

  def edit
  end

  def show
  end

  private

  def set_meat
    @meat = Meat.find(params[:id])
  end

  def meat_parameters
    params.require(:meat).permit(:gender, :summary, :description, :hobbies, :education, :nationality, :height, :weight, :occupation, :location, :price)
  end

end
