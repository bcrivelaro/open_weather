# OpenWeather

This gem is a OpenWeather API wrapper. It contains some endpoints to bring this API to the Ruby world.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_weather', git: 'https://github.com/bcrivelaro/open_weather', tag: '0.1.0'
```

And then execute:

    $ bundle install

## Usage

Instantiate your client:

```ruby
options = { lang: 'pt_br', units: 'metric' } # optional
client = OpenWeather.client('your-open-weather-api-token-here', options)
```

Then, fetch `weather` or `forecast` using `q`, `id` or `zip` and `country_code`:

```ruby
client.weather.find_by(q: 'New York')
client.weather.find_by_q('New York')
client.weather.find_by_zip_and_country_code('10001', 'us')
client.forecast.find_by(id: 6316729)
client.forecast.find_by_id(6316729)
client.forecast.find_by(zip: '10001', country_code: 'us')
```
