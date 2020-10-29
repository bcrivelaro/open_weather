RSpec.describe OpenWeather::Entities::Weather::Wind do
  let(:attributes) { 
    {
      speed: 1.29,
      deg: 296
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:speed, :deg, :gust]

    expect(entity.attributes).to eq(expected_attributes)
  end
end