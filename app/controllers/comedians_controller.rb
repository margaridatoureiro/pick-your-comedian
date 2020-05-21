# frozen_string_literal: true

# top-level class comment
class ComediansController < ApplicationController
  before_action :fetch_comedian, only: %(show edit update destroy)
  def index
    @comedians = Comedian.all
  end

  def new
    @comedian = Comedian.new
  end

  def create
    @comedian = Comedian.new(comedian_params)
    if @comedian.save
      redirect_to comedian_path(@comedian)
      # or redirect_to @cocktail or redirect_to @cocktail(@cocktail.id)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @comedian.update(comedian_params)
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
    params.require(:comedian).permit(:name, :age, :content)
  end
end
