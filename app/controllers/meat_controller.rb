class MeatController < ApplicationController
  def index
    @meaters = Meater.where(user_category: "meat")
  end

  def new
    @meater.user_category = "Meat"
  end

  def create
  end

  def edit
  end

  def show
  end

  private

  def set_meat
  end

  def meat_parameters
  end

end
