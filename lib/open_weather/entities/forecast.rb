module OpenWeather
  module Entities
    class Forecast < Base
      attr_accessor :dt, :main, :weather, :clouds, :wind, :visibility, :pop,
                    :rain, :snow, :sys, :dt_txt

      def initialize(attrs = {})
        attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
        @dt = Time.at(attrs[:dt]) if attrs[:dt]
        @main = Entities::Forecast::Main.new(attrs[:main])
        @weather = attrs[:weather].map { |w| Entities::Forecast::Weather.new(w) }
        @clouds = Entities::Forecast::Clouds.new(attrs[:clouds])
        @wind = Entities::Forecast::Wind.new(attrs[:wind])
        @visibility = attrs[:visibility]
        @pop = attrs[:pop]
        @rain = Entities::Forecast::Rain.new(attrs[:rain]) if attrs[:rain]
        @snow = Entities::Forecast::Snow.new(attrs[:snow]) if attrs[:snow]
        @sys = Entities::Forecast::Sys.new(attrs[:sys])
        @dt_txt = Time.parse(attrs[:dt_txt] + ' UTC') if attrs[:dt_txt]
      end
    end
  end
end