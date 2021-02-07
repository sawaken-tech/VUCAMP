class CampsController < ApplicationController

  before_action :set_camp, only: [:show]

  def index
    @camps = Camp.all
  end

  def new
    @camp = Camp.new
    @camp.images.build
    @camp.nearStores.build
  end

  def create
    @camp = Camp.create(camp_params)
    unless @camp.valid?
      flash.now[:alert] = @camp.errors.messages
      render :new and return
    end
  end

  def show
  end

  def camp_params
    params.require(:camp).permit(
      :campName,
      :address,
      :capacity,
      :price,
      :level,
      :workHour,
      nearStores_attributes: [:id, :storeName, :address],
      images_attributes: [:id, :image]
    )
  end

  def set_camp
    @camp = Camp.find(params[:id])
  end
end
