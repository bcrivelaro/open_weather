RSpec.describe OpenWeather::Entities::City do
  let(:attributes) {
    {
      id: 6316729,
      name: 'Campinas',
      state: '',
      country: 'BR',
      coord: {
        lon: -48.606941,
        lat: -27.59444
      }
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:id, :name, :state, :country, :coord]
    
    expect(entity.attributes).to eq(expected_attributes)
  end
end