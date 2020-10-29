module OpenWeather
  module Entities
    class City < Base
      attr_accessor :id, :name, :state, :country, :coord

      def initialize(attrs = {})
        attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
        @id = attrs[:id]
        @name = attrs[:name]
        @state = attrs[:state]
        @country = attrs[:country]
        @coord = Entities::City::Coord.new(attrs[:coord])
      end
    end
  end
end