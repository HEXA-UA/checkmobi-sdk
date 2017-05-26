# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "checkmobi/version"

Gem::Specification.new do |spec|
  spec.name          = 'checkmobi-sdk'
  spec.version       = Checkmobi::SDK::VERSION
  spec.authors       = ['hexa']
  spec.email         = ['i.pylypenko@hexa.com.ua']

  spec.summary       = "Checkmobi's Ruby SDK"
  spec.description   = "Checkmobi's Ruby SDK for interacting with the Checkmobi API."
  spec.homepage      = 'https://hexa.com.ua'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.9'
  spec.add_development_dependency 'pry-byebug', '~> 3.3'
  spec.add_development_dependency 'vcr', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.11'
  spec.add_development_dependency 'webmock', '~> 1.22'

  spec.add_dependency 'rest-client', '~> 1.6'
  spec.add_dependency 'json', '~> 1.8'
end
