class OpenWeather::Entities::Forecast::Snow < OpenWeather::Entities::Base
  attr_accessor :_3h

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @_3h = attrs['3h']
  end
end