class SharksController < ApplicationController
  before_action :set_shark, only: [:edit, :show, :update, :destroy]

  def index
    @sharks = Shark.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @shark = Shark.new
  end

  def create
    @shark = Shark.new(shark_params)
    @shark.user = current_user
    # raise
    if @shark.save!
      redirect_to shark_path(@shark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @shark.update(shark_params)
      redirect_to shark_path(@shark)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @shark.destroy
    redirect_to sharks_path, status: see_other
  end

  private

  def set_shark
    @shark = Shark.find(params[:id])
  end

  def shark_params
    params.require(:shark).permit(:name, :age, :breed, :description, :price, :diet, :picture_url)
  end
end
