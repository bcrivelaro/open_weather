require 'json'

module OpenWeather
  module Resources
    class City
      def find_by_name(name)
        city = cities_list.find { |c| c['name'] == name }

        Entities::City.new(city) if city
      end

      def find(opts = {})
        raise MissingParameterError if !opts[:name] && !opts[:state]

        cities = cities_list.select do |city|
          (opts[:name] && opts[:name] == city['name']) || (opts[:state] && opts[:state] == city['state'])
        end

        cities.map { |c| Entities::City.new(c) }
      end

      private

      def cities_list
        file_path = File.join(File.dirname(File.dirname(File.absolute_path(__FILE__))),
                              'vendor/current.city.list.min.json')
        file = File.read(file_path)

        JSON.parse(file)
      end
    end
  end
end