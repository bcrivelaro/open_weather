RSpec.describe OpenWeather::Entities::Forecast::Main do
  let(:attributes) { 
    {
      temp: 13.37,
      feels_like: 11.28,
      temp_min: 13.37,
      temp_max: 13.45,
      pressure: 1016,
      sea_level: 1016,
      grnd_level: 1014,
      humidity: 74,
      temp_kf: -0.08
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:temp, :feels_like, :temp_min, :temp_max, :pressure,
                           :sea_level, :grnd_level, :humidity, :temp_kf]

    expect(entity.attributes).to eq(expected_attributes)
  end
end