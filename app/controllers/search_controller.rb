class SearchController < ApplicationController
  def index
    @gas_station = api_service.locate_by_zip(params)
  end
end
