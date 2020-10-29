RSpec.describe OpenWeather::Resources::Weather do
  let(:resource) { OpenWeather::Resources::Weather.new('41673c83811cd4c75275a187f7e1dfc9') }

  describe '#find_by_q' do
    context 'when city does not exist' do
      it 'does raise OpenWeather::CityNotFoundError', :vcr do
        expect { resource.find_by_q('invalid') }.to(
          raise_error(OpenWeather::CityNotFoundError)
        )
      end
    end

    context 'when city does exist' do
      it 'does return a OpenWeather::Entities::Weather', :vcr do
        weather = resource.find_by_q('New York')

        expect(weather).to be_a(OpenWeather::Entities::Weather)
      end
    end
  end

  describe '#find_by_id' do
    context 'when city does not exist' do
      it 'does raise OpenWeather::CityNotFoundError', :vcr do
        expect { resource.find_by_id(999999999) }.to(
          raise_error(OpenWeather::CityNotFoundError)
        )
      end
    end

    context 'when city does exist' do
      it 'does return a OpenWeather::Entities::Weather', :vcr do
        weather = resource.find_by_id(6316729)

        expect(weather).to be_a(OpenWeather::Entities::Weather)
      end
    end
  end

  describe '#find_by_zip_and_country_code' do
    context 'when city does not exist' do
      it 'does raise OpenWeather::CityNotFoundError', :vcr do
        expect do
          resource.find_by_zip_and_country_code('00000', 'in')
        end.to raise_error(OpenWeather::CityNotFoundError)
      end
    end

    context 'when city does exist' do
      it 'does return a OpenWeather::Entities::Weather', :vcr do
        weather = resource.find_by_zip_and_country_code('10001', 'us')

        expect(weather).to be_a(OpenWeather::Entities::Weather)
      end
    end
  end

  describe '#find_by' do
    context 'when api key is invalid' do
      it 'does raise an OpenWeather::InvalidApiKeyError', :vcr do
        invalid_resource = OpenWeather::Resources::Weather.new('')

        expect { invalid_resource.find_by({ foo: 'bar'}) }.to(
          raise_error(OpenWeather::InvalidApiKeyError)
        )
      end
    end

    context 'when params are missing' do
      it 'does raise an OpenWeather::NothingToGeocodeError', :vcr do
        expect { resource.find_by({ foo: 'bar'}) }.to(
          raise_error(OpenWeather::NothingToGeocodeError)
        )
      end
    end

    context 'when params are present' do
      it 'does returns a OpenWeather::Entities::Weather', :vcr do
        weather = resource.find_by(q: 'Campinas')

        expect(weather).to be_a(OpenWeather::Entities::Weather)
      end
    end
  end
end