RSpec.describe OpenWeather::Entities::Forecast::Clouds do
  let(:attributes) { { all: 0 } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:all]

    expect(entity.attributes).to eq(expected_attributes)
  end
end