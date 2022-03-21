# frozen_string_literal: true

require_relative 'lib/rubocop/vnda/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-vnda'
  spec.version       = Rubocop::Vnda::VERSION
  spec.authors       = ['Rafael Souza']
  spec.email         = ['rafael.ssouza@gmail.com']

  spec.summary       = 'RuboCop configuration for Vnda'
  spec.description   = 'RuboCop configuration for Ruby projects at Vnda'
  spec.homepage      = 'https://github.com/vnda/rubocop-vnda'
  spec.required_ruby_version = '>= 2.5.5'

  spec.metadata['allowed_push_host'] = "https://rubygems.org"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/vnda/rubocop'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'standard', '1.8.0'
  spec.add_dependency 'rubocop-rails', '2.14.2'
  spec.add_dependency 'rubocop-rspec', '2.9.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
