RSpec.describe OpenWeather::Entities::Weather do
  let(:attributes) {
    {
      coord: {
        lon: -48.61,
        lat: -27.59
      },
      weather: [
        {
          id: 500,
          main: 'Rain',
          description: 'chuva leve',
          icon: '10n'
        }
      ],
      base: 'stations',
      main: {
        temp: 18.89,
        feels_like: 20.74,
        temp_min: 18.89,
        temp_max: 18.89,
        pressure: 1008,
        humidity: 94
      },
      visibility: 10000,
      wind: {
        speed: 1.29,
        deg: 296
      },
      rain: {
        '1h': 0.18
      },
      clouds: {
        all: 0
      },
      dt: 1603935718,
      sys: {
        type: 3,
        id: 2006264,
        country: 'BR',
        sunrise: 1603873547,
        sunset: 1603920623
      },
      timezone: -10800,
      id: 6316729,
      name: 'Campinas',
      cod: 200
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:coord, :weather, :base, :main, :visibility, :wind, :clouds, :rain,
                           :snow, :dt, :sys, :timezone, :id, :name, :cod]
    
    expect(entity.attributes).to eq(expected_attributes)
  end
end