RSpec.describe OpenWeather::Entities::Forecast do
  let(:attributes) {
    {
      dt: 1603951200,
      main: {
        temp: 13.37,
        feels_like: 11.28,
        temp_min: 13.37,
        temp_max: 13.45,
        pressure: 1016,
        sea_level: 1016,
        grnd_level: 1014,
        humidity: 74,
        temp_kf: -0.08
      },
      weather: [
        {
          id: 803,
          main: 'Clouds',
          description: 'nublado',
          icon: '04n'
        }
      ],
      clouds: {
        all: 59
      },
      wind: {
        speed: 2.61,
        deg: 340
      },
      visibility: 10000,
      pop: 0,
      sys: {
        pod: 'n'
      },
      dt_txt: '2020-10-29 06:00:00'
    }
  }

  it 'does return expected attributes' do
    entity = described_class.new(attributes)

    expected_attributes = [:dt, :main, :weather, :clouds, :wind, :visibility, :pop,
                           :rain, :snow, :sys, :dt_txt]
    
    expect(entity.attributes).to eq(expected_attributes)
  end
end