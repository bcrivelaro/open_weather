require 'httparty'

module OpenWeather
  module Resources
    class Base
      include HTTParty
      base_uri 'api.openweathermap.org/data/2.5'
      query_string_normalizer proc { |query|
        query.map do |key, value|
            "#{key}=#{value}"
        end.join('&')
      }

      def initialize(api_key, default_options = {})
        @api_key = api_key
        @default_options = default_options
      end

      def find_by(opts = {})
        response = self.class.get("/#{resource_name}", query: build_query(opts))
        raise InvalidApiKeyError if response['message']&.include?('Invalid API key')
        raise CityNotFoundError if response['message'] == 'city not found'
        raise NothingToGeocodeError if response['message'] == 'Nothing to geocode'
    
        entity_klass.new(response)
      end

      def find_by_q(location, opts = {})
        find_by({ q: location }.merge(opts))
      end
    
      def find_by_id(id, opts = {})
        find_by({ id: id }.merge(opts))
      end

      def find_by_zip_and_country_code(zip, country_code, opts = {})
        find_by({ zip: "#{zip},#{country_code}" }.merge(opts))
      end

      def find_by_lat_and_lon(lat, lon, opts = {})
        find_by({ lat: lat, lon: lon }.merge(opts))
      end

      private

      attr_reader :api_key, :default_options

      def build_query(opts)
        opts.merge(default_options).merge({ appid: api_key })
      end

      def resource_name
        self.class.resource_name
      end

      def entity_klass
        Object.const_get("OpenWeather::Entities::#{self.class.to_s.split('::').last}")
      end

      class << self
        def resource_name(resource_name = nil)
          @resource_name = resource_name unless resource_name.nil?
          @resource_name
        end
      end
    end
  end
end