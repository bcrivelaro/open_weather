module OpenWeather
  module Entities
    class Weather < Base
      attr_accessor :coord, :weather, :base, :main, :visibility, :wind, :clouds,
                    :rain, :snow, :dt, :sys, :timezone, :id, :name, :cod

      def initialize(attrs = {})
        attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
        @coord = OpenWeather::Entities::Weather::Coord.new(attrs[:coord]) if attrs[:coord]
        @weather = attrs[:weather].map { |w| OpenWeather::Entities::Weather::Weather.new(w) }
        @base = attrs[:base]
        @main = OpenWeather::Entities::Weather::Main.new(attrs[:main])
        @visibility = attrs[:visibility]
        @wind = OpenWeather::Entities::Weather::Wind.new(attrs[:wind])
        @clouds = OpenWeather::Entities::Weather::Clouds.new(attrs[:clouds])
        @rain = OpenWeather::Entities::Weather::Rain.new(attrs[:rain]) if attrs[:rain]
        @snow = OpenWeather::Entities::Weather::Snow.new(attrs[:snow]) if attrs[:snow]
        @dt = Time.at(attrs[:dt]) if attrs[:dt]
        @sys = OpenWeather::Entities::Weather::Sys.new(attrs[:sys])
        @timezone = attrs[:timezone]
        @id = attrs[:id]
        @name = attrs[:name]
        @cod = attrs[:cod]
      end
    end
  end
end