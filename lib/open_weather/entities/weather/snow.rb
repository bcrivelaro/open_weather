class OpenWeather::Entities::Weather::Snow < OpenWeather::Entities::Base
  attr_accessor :_1h, :_3h

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @_1h = attrs['1h']
    @_3h = attrs['3h']
  end
end