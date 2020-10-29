class OpenWeather::Entities::City::Coord < OpenWeather::Entities::Base
  attr_accessor :lon, :lat

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @lon = attrs[:lon]
    @lat = attrs[:lat]
  end
end