RSpec.describe OpenWeather::Entities::Forecast::Wind do
  let(:attributes) { { speed: 2.61, deg: 340 } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:speed, :deg]

    expect(entity.attributes).to eq(expected_attributes)
  end
end