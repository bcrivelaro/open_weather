require 'open_weather/version'

require 'open_weather/client'

module OpenWeather
  def self.client(api_token = nil, default_options = {})
    OpenWeather::Client.new(api_token, default_options)
  end
end
