class OpenWeather::Entities::Forecast::Clouds < OpenWeather::Entities::Base
  attr_accessor :all

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @all = attrs[:all]
  end
end