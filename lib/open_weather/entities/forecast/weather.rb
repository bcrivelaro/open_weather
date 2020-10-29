class OpenWeather::Entities::Forecast::Weather < OpenWeather::Entities::Base
  attr_accessor :id, :main, :description, :icon

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @id = attrs[:id]
    @main = attrs[:main]
    @description = attrs[:description]
    @icon = attrs[:icon]
  end
end