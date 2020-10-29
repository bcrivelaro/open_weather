RSpec.describe OpenWeather::Resources::City do
  let(:resource) { described_class.new }

  describe '#find_by_name' do
    context 'when city does not exist' do
      it 'does return nil' do
        city = resource.find_by_name('invalid')
        
        expect(city).to be_nil
      end
    end

    context 'when city does exist' do
      it 'does return a OpenWeather::Entities::City' do
        city = resource.find_by_name('New York')

        expect(city).to be_a(OpenWeather::Entities::City)
      end
    end
  end

  describe '#find' do
    context 'when params are missing' do
      it 'does raise OpenWeather::MissingParameterError' do
        expect { resource.find({}) }.to(
          raise_error(OpenWeather::MissingParameterError)
        )
      end
    end

    context 'when params are present' do
      context 'when cities are found by name' do
        it 'does return an array of OpenWeather::Entities::City' do
          cities = resource.find(name: 'New York')
  
          expect(cities).to be_a(Array)
          expect(cities.first).to be_a(OpenWeather::Entities::City)
        end
      end

      context 'when cities are found by name and state' do
        it 'does return an array of OpenWeather::Entities::City' do
          cities = resource.find(name: 'Laurel', state: 'FL')
  
          expect(cities).to be_a(Array)
          expect(cities.first).to be_a(OpenWeather::Entities::City)
        end
      end
    end
  end
end