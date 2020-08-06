# frozen_string_literal: true

require_relative 'lib/ez/tracer/version'

Gem::Specification.new do |spec|
  spec.name          = 'ez-tracer'
  spec.version       = Ez::Tracer::VERSION
  spec.authors       = ['Volodya Sveredyuk']
  spec.email         = ['sveredyuk@gmail.com']

  spec.summary       = 'Easy way to trace any changes of you app'
  spec.description   = 'Easy way to trace any changes of you app'
  spec.homepage      = 'https://github.com/ez-engines/ez-tracer'
  spec.license       = 'MIT'

  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'ez-core', '~> 0.2.0'

  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
