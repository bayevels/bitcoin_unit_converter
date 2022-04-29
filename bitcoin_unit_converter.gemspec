# frozen_string_literal: true

require_relative "lib/bitcoin_unit_converter/version"

Gem::Specification.new do |spec|
  spec.name = 'bitcoin_unit_converter'
  spec.version = BitcoinUnitConverter::VERSION
  spec.authors = ['Serigne Mouhamadou Bassirou Diaby']
  spec.email = ['bayevels@gmail.com']

  spec.summary = 'Bitcoin unit converter in Ruby'
  spec.homepage = 'https://github.com/bayevels/bitcoin_unit_converter'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.2')
  spec.metadata = {
    'documentation_uri' => spec.homepage.to_s,
    'homepage_uri' => spec.homepage.to_s,
    'source_code_uri' => spec.homepage.to_s
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bigdecimal', '~> 3.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 13.0'
end
