RSpec.describe OpenWeather::Entities::Weather::Main do
  let(:attributes) { 
    {
      temp: 18.89,
      feels_like: 20.74,
      temp_min: 18.89,
      temp_max: 18.89,
      pressure: 1008,
      humidity: 94
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:temp, :feels_like, :temp_min, :temp_max, :pressure,
                           :humidity, :sea_level, :grnd_level]

    expect(entity.attributes).to eq(expected_attributes)
  end
end