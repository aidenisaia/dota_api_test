class ItemTimingsController < ApplicationController
  def index
    response = HTTP.get("https://api.opendota.com/api/scenarios/itemTimings")

    render json: response.parse(:json)
  end

  def show
    response = HTTP.get("https://api.opendota.com/api/scenarios/itemTimings")

    response = response.parse(:json)

    items = []
    response.each do |x|
      if x["item"] == params[:id]
        items << x
      end
    end

    render json: items
  end
end
