class OpenWeather::Entities::Weather::Sys < OpenWeather::Entities::Base
  attr_accessor :type, :id, :message, :country, :sunrise, :sunset

  def initialize(attrs = {})
    attrs = ActiveSupport::HashWithIndifferentAccess.new(attrs)
    @type = attrs[:type]
    @id = attrs[:id]
    @message = attrs[:message]
    @country = attrs[:country]
    @sunrise = Time.at(attrs[:sunrise]) if attrs[:sunrise]
    @sunset = Time.at(attrs[:sunset]) if attrs[:sunset]
  end
end