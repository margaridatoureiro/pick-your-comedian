# frozen_string_literal: true

# top-level class comment -> hint: dont forget that destroy doesnt have a comedian_id
class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_comedian, only: %i[new create]
  before_action :fetch_review, only: %i[edit update destroy]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.comedian = @comedian
    if @review.save
      redirect_to @comedian # (same as comedian_path(@review.comedian),the comedian of that review)
    else
      render :new
    end
  end

  def edit; end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to comedian_path(@review.comedian)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to comedian_path(@review.comedian)
  end

  private

  def fetch_comedian
    @comedian = Comedian.find(params[:comedian_id])
  end

  def fetch_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
