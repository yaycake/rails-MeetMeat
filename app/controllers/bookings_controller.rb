class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :btn_agree, :btn_refuse, :btn_finalize, :btn_cancel]
  helper_method :btn_agree, :btn_refuse, :btn_finalize, :btn_cancel

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @meat = Meat.find(params[:meat_id])
    @booking = @meat.bookings.new
  end

  def create
    @meat = Meat.find(booking_params[:meat_id])
    @booking = Booking.new(booking_params)
    @booking.meater = current_meater
    @booking.meat = @meat
    @booking.status = "sent"
    p @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def agree
    @booking.agree
    @booking.save
    redirect_to booking_path(@booking)
  end

  def reject
    @booking.reject
    @booking.save
    redirect_to booking_path(@booking)
  end

  def finalize
    @booking.finalize
    @booking.save
    redirect_to booking_path(@booking)
  end

  def cancel
    booking.cancel
    @booking.save
    redirect_to booking_path(@booking)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:meat_id, :description)
  end
end
