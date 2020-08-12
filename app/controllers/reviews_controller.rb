class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_to "/restaurants/#{@restaurant.id}/reviews"
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

