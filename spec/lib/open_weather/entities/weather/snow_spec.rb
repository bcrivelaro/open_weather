RSpec.describe OpenWeather::Entities::Weather::Snow do
  let(:attributes) { { '1h': 0.18, '3h': 0.2 } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:_1h, :_3h]

    expect(entity.attributes).to eq(expected_attributes)
  end
end