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

  def btn_agree
    @booking.status = "agreed"
    @booking.save
    redirect_to booking_path(@booking)
  end

  def btn_refuse
    @booking.status = "rejected"
    @booking.save
    redirect_to booking_path(@booking)
  end

  def btn_finalize
    @booking.status = "finalized"
    @booking.save
    redirect_to booking_path(@booking)
  end

  def btn_cancel
    @booking.status = "cancelled"
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
