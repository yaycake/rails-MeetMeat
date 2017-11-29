class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :btn_agree, :btn_refuse, :btn_finalize, :btn_cancel]
  helper_method :btn_agree, :btn_refuse, :btn_finalize, :btn_cancel

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "sent"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      #add redirect
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
    params.require(:booking).permit(:meat_id, :meater_id, :description)
  end
end
