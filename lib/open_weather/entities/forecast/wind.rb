class OpenWeather::Entities::Forecast::Wind < OpenWeather::Entities::Base
  attr_accessor :speed, :deg

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @speed = attrs[:speed]
    @deg = attrs[:deg]
  end
end