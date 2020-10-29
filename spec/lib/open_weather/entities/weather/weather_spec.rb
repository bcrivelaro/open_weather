RSpec.describe OpenWeather::Entities::Weather::Weather do
  let(:attributes) { 
    {
      id: 500,
      main: 'Rain',
      description: 'chuva leve',
      icon: '10n'
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:id, :main, :description, :icon]

    expect(entity.attributes).to eq(expected_attributes)
  end
end