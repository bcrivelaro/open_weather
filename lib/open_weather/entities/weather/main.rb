class OpenWeather::Entities::Weather::Main < OpenWeather::Entities::Base
  attr_accessor :temp, :feels_like, :temp_min, :temp_max, :pressure,
                :humidity, :sea_level, :grnd_level

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @temp = attrs[:temp]
    @feels_like = attrs[:feels_like]
    @temp_min = attrs[:temp_min]
    @temp_max = attrs[:temp_max]
    @pressure = attrs[:pressure]
    @humidity = attrs[:humidity]
    @sea_level = attrs[:sea_level]
    @grnd_level = attrs[:grnd_level]
  end
end