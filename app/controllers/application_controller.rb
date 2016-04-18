class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :api_service

  def api_service
    @api_service ||= ApiService.new
  end

end
