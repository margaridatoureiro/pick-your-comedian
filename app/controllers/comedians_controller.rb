# frozen_string_literal: true

# top-level class comment
class ComediansController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_comedian, only: %i[show edit update destroy]
  def index
    # Comedian.reindex
    if params[:query].present?
      @comedians = Comedian.search params[:query]
    else
      @comedians = Comedian.all
    end
  end

  def new
    @comedian = Comedian.new
  end

  def create
    @comedian = Comedian.new(comedian_params)
    current_user.role = 'Comedy Agency'
    current_user.save
    @comedian.user_id = current_user.id # same as @comedian.user = current_user
    if @comedian.save
      redirect_to comedian_path(@comedian)
    else
      render :new
    end
  end

  def show
    @comedian.user_id = current_user.id
    @markers = [{ lng: @comedian.longitude, lat: @comedian.latitude }]
    @booking = Booking.new
    @comedian.average_rating = get_average_rating(@comedian)
    @comedian.save
  end

  def edit; end

  def update
    if @comedian.update(comedian_params)
      @comedian.user_id = current_user.id
      redirect_to comedian_path(@comedian)
    else
      render :edit
    end
  end

  def destroy
    @comedian.destroy
    redirect_to comedians_path
  end

  private

  def fetch_comedian
    @comedian = Comedian.find(params[:id])
  end

  def comedian_params
    params.require(:comedian).permit(:id, :name, :age, :content, :photo, :address, :average_rating)
  end

  def get_average_rating(comedian)
    comedian.reviews.sum(:rating) / comedian.reviews.size
  end
end
