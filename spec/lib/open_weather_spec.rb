RSpec.describe OpenWeather do
  it "has a version number" do
    expect(OpenWeather::VERSION).not_to be nil
  end

  describe '.client' do
    subject { described_class.client }

    it { is_expected.to be_a(OpenWeather::Client) }
  end
end
