require_relative 'lib/open_weather/version'

Gem::Specification.new do |spec|
  spec.name          = "open_weather"
  spec.version       = OpenWeather::VERSION
  spec.authors       = ["Bruno Crivelaro"]
  spec.email         = ["brunosantoscrivelaro@gmail.com"]

  spec.summary       = 'Open Weather API wrapper'
  spec.description   = 'Open Weather API wrapper'
  spec.homepage      = 'https://github.com/bcrivelaro/open_weather'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/bcrivelaro/open_weather'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', '~> 0.18.1'
  spec.add_dependency 'json', '~> 2.3.1'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'vcr', '~> 6.0.0'
end
