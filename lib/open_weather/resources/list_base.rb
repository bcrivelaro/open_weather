module OpenWeather
  module Resources
    class ListBase < Base
      def find_by(opts = {})
        response = self.class.get("/#{resource_name}", query: build_query(opts))
        raise InvalidApiKeyError if response['message']&.to_s&.include?('Invalid API key')
        raise CityNotFoundError if response['message']&.to_s == 'city not found'
        raise NothingToGeocodeError if response['message']&.to_s == 'Nothing to geocode'

        response['list'].map { |i| entity_klass.new(i) }
      end
    end
  end
end