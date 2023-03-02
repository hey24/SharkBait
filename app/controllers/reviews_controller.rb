class ReviewsController < ApplicationController
  before_action :set_shark, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.shark = @shark
    @review.user = current_user
    if @review.save
      redirect_to shark_path(@shark)
    else
      # render :new, status: :unprocessable_entity
      flash.alert = "Review can't be saved. Please enter information."
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to shark_path(@review.shark), status: :see_other
  end

  private

  def set_shark
    @shark = Shark.find(params[:shark_id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end
end
