RSpec.describe OpenWeather::Entities::Forecast::Sys do
  let(:attributes) { { pod: 'n' } }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:pod]

    expect(entity.attributes).to eq(expected_attributes)
  end
end