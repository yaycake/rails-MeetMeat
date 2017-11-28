class MeatsController < ApplicationController
  before_action :set_meat, only: [:update, :edit, :show]

  def index
    @meats = Meater.where(user_category: "meat")
  end

  def update
    @meat.user_category = "Meat"
    @meat.update(meat_parameters)
    #collect id of current meater (set_meat)
    # change user category status to 'meat'
    # add the rest of the attributes
  end

  def edit
  end

  def show
  end

  private

  def set_meat
    @meat = Meater.find(param[:id])
  end

  def meat_parameters
    param.require(:meater).permit(:gender, :summary, :description, :hobbies, :education, :nationality, :height, :weight, :occupation, :location, :price)
  end

end
