class ApiService

  attr_reader :current_user

  def initialize
    @_connection = Faraday.new('https://api.data.gov/nrel/alt-fuel-stations')
    @api_key = "W135h8Y3uDfjT1nNUbichexqVGBc9RKS89gTVTM4"
  end

  def locate_by_zip(params)
    result = JSON.parse(connection.get("/v1.json?limit=1&api_key=#{@api_key}").body)
    binding.pry
  end

  private
    def connection
      @_connection
    end



end
