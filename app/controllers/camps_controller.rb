class CampsController < ApplicationController
  def index
    @camps = Camp.all
  end

  def new
    @camp = Camp.new
  end

  def create
    @camp = Camp.new(camp_params)
  end

  def camp_params
    params.require(:camp).permit(
    )
  end

end
