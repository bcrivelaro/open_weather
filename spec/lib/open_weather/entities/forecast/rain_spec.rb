RSpec.describe OpenWeather::Entities::Forecast::Rain do
  let(:attributes) { { '3h': 0.2 } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:_3h]

    expect(entity.attributes).to eq(expected_attributes)
  end
end