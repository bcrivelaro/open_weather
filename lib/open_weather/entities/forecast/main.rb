class OpenWeather::Entities::Forecast::Main < OpenWeather::Entities::Base
  attr_accessor :temp, :feels_like, :temp_min, :temp_max, :pressure,
                :sea_level, :grnd_level, :humidity, :temp_kf

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @temp = attrs[:temp]
    @feels_like = attrs[:feels_like]
    @temp_min = attrs[:temp_min]
    @temp_max = attrs[:temp_max]
    @pressure = attrs[:pressure]
    @sea_level = attrs[:sea_level]
    @grnd_level = attrs[:grnd_level]
    @humidity = attrs[:humidity]
    @temp_kf = attrs[:temp_kf]
  end
end