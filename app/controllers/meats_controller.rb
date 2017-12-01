class MeatsController < ApplicationController
  before_action :set_meat, only: [:edit, :show]

  def new
    # current_meater => # Meater

    @meat = current_meater.becomes(Meat)
  end

  def index
    @meats = Meat.where(user_category: "meat")
  end

  def update
    @meat = current_meater.becomes(Meat)
    param_hash = { user_category: 'meat' }.merge(meat_parameters)

    if @meat.update(param_hash)
      redirect_to meat_path(current_meater)
    else
      render :new
    end
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
    params.require(:meat).permit(:last_name, :first_name, :gender, :summary, :description, :hobbies, :education, :nationality, :height, :weight, :occupation, :location, :price, :photo, :photo_cache, :display_name)
  end

end
