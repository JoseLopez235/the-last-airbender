require 'faraday'

class AvatarApiService
  def self.search_characters(nation)
    response = conn.get("api/v1/characters") do |req|
      req.params[:affiliation] = nation
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private
  def self.conn
    Faraday.new("https://last-airbender-api.herokuapp.com")
  end
end
