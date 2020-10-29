require 'active_support/core_ext/hash/indifferent_access'

require 'open_weather/version'

require 'open_weather/entities/base'
require 'open_weather/entities/weather'
require 'open_weather/entities/weather/clouds'
require 'open_weather/entities/weather/coord'
require 'open_weather/entities/weather/main'
require 'open_weather/entities/weather/rain'
require 'open_weather/entities/weather/snow'
require 'open_weather/entities/weather/sys'
require 'open_weather/entities/weather/weather'
require 'open_weather/entities/weather/wind'

require 'open_weather/resources/base'
require 'open_weather/resources/weather'

require 'open_weather/client'

module OpenWeather
  class MissingApiKeyError < StandardError; end
  class InvalidApiKeyError < StandardError; end
  class CityNotFoundError < StandardError; end
  class NothingToGeocodeError < StandardError; end

  def self.client(api_key = nil, default_options = {})
    OpenWeather::Client.new(api_key, default_options)
  end
end
