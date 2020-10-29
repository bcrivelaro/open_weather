RSpec.describe OpenWeather::Entities::Forecast::Weather do
  let(:attributes) { 
    {
      id: 803,
      main: 'Clouds',
      description: 'nublado',
      icon: '04n'
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:id, :main, :description, :icon]

    expect(entity.attributes).to eq(expected_attributes)
  end
end