RSpec.describe OpenWeather::Entities::City::Coord do
  let(:attributes) { { lon: -48.61, lat: -27.59 } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:lon, :lat]

    expect(entity.attributes).to eq(expected_attributes)
  end
end