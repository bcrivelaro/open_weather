module OpenWeather
  class Client
    def initialize(api_key = nil, default_options = {})
      @api_key = api_key
      @default_options = default_options
    end

    def weather
      raise MissingApiKeyError if !api_key

      OpenWeather::Resources::Weather.new(api_key, default_options)
    end

    def forecast
      raise MissingApiKeyError if !api_key

      OpenWeather::Resources::Forecast.new(api_key, default_options)
    end

    private

    attr_reader :api_key, :default_options
  end
end