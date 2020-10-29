module OpenWeather
  class Client
    def initialize(api_token = nil, default_options = {})
      @api_token = api_token
      @default_options = default_options
    end

    private

    attr_reader :api_token, :default_options
  end
end