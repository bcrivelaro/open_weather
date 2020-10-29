class OpenWeather::Entities::Weather::Wind < OpenWeather::Entities::Base
  attr_accessor :speed, :deg, :gust

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @speed = attrs[:speed]
    @deg = attrs[:deg]
    @gust = attrs[:gust]
  end
end