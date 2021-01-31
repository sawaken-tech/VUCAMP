class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end

  def new
    @camp = Camp.new
  end

  def create
    binding.pry
    @camp = Camp.create(camp_params)
    unless @camp.valid?
      flash.now[:alert] = @camp.errors.messages
      render :new and return
    end
  end

  def camp_params
    params.require(:camp).permit(
      :campName,
      :address,
      :capacity,
      :price,
      :level,
      :workHour,
      nearStore_attributes: [:id, :storeName, :address],
      images_attributes: [:id, :image]
    )
  end

end
