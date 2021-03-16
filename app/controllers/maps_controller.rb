class MapsController < ApplicationController

  # def map
  #   results = Geocoder.search(params[:address])
  #   @latlng = results.first.coordinates
  # end
  respond_to do |format|
    format.js
  end

end
