# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uca_api/version'

Gem::Specification.new do |gem|
  gem.name          = "uca_api"
  gem.version       = UcaApi::VERSION
  gem.summary       = %q{Interface to UCA's API}
  gem.description   = %q{This interface's to the UCA api, and performs simple requests}
  gem.license       = "MIT"
  gem.authors       = ["psyomn"]
  gem.email         = "lethaljellybean@gmail.com"
  gem.homepage      = "https://github.com/psyomn/uca_api#readme"

  gem.files         = `git ls-files`.split($/)

  `git submodule --quiet foreach --recursive pwd`.split($/).each do |submodule|
    submodule.sub!("#{Dir.pwd}/",'')

    Dir.chdir(submodule) do
      `git ls-files`.split($/).map do |subpath|
        gem.files << File.join(submodule,subpath)
      end
    end
  end
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.10'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rdoc', '~> 4.0'
  gem.add_development_dependency 'rspec', '~> 3.0'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'

  gem.add_runtime_dependency 'slop', '~> 3.6'
end
