RSpec.describe OpenWeather::Client do
  describe '#weather' do
    context 'when api key is present' do
      it 'does return weather resource' do
        client = described_class.new('123456')

        expect(client.weather).to be_a(OpenWeather::Resources::Weather)
      end
    end

    context 'when api key is missing' do
      it 'does raise OpenWeather::MissingApiKeyError' do
        client = described_class.new

        expect { client.weather }.to raise_error(OpenWeather::MissingApiKeyError)
      end
    end
  end
end