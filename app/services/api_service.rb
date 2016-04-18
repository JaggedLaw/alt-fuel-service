class ApiService

  attr_reader :current_user

  def initialize(current_user)
    @_connection = Faraday.new('https://developer.nrel.gov/api/alt-fuel-stations')

  end

  def locate_by_zip
    JSON.parse(connection.get("/users/#{@name}", symbolize_names: true).body)["avatar_url"]
  end



end
