RSpec.describe OpenWeather::Entities::Weather::Sys do
  let(:attributes) { 
    {
      type: 3,
      id: 2006264,
      country: 'BR',
      sunrise: 1603873547,
      sunset: 1603920623
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:type, :id, :message, :country, :sunrise, :sunset]

    expect(entity.attributes).to eq(expected_attributes)
  end
end