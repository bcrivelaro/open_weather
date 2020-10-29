class OpenWeather::Entities::Forecast::Sys < OpenWeather::Entities::Base
  attr_accessor :pod

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @pod = attrs[:pod]
  end
end