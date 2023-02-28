class BookingsController < ApplicationController
  before_action :set_shark, only: [:new, :create]
  before_action :set_booking, only: [:destroy]

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.shark = @shark
    @booking.user = current_user
    if @booking.save
      redirect_to shark_path(@shark)
    else
      render 'bookings/new', status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to sharks_path, status: see_other
  end

  private

  def set_shark
    @shark = Shark.find(params[:shark_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
