class BookingsController < ApplicationController
  before_action :fetch_comedian, only: :create
  before_action :fetch_booking, only: :destroy

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.comedian = @comedian
    @booking.user = current_user
    if @booking.save
      flash[:notice] = 'You have successfully booked a fine Joker ;)'
      redirect_to comedian_path(@booking.comedian)
    else
      render 'comedians/show'
    end
  end

  def destroy
    @booking.destroy
    redirect_to comedian_path(@booking.comedian)
  end

  private

  def fetch_comedian
    @comedian = Comedian.find(params[:comedian_id])
  end

  def fetch_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comedian_id, :user_id)
  end
end
