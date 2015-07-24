require_relative 'lib/nosolorails/version'
require 'date'

Gem::Specification.new do |s|
  #
  ## INFORMATION
  #
  s.name = 'nosolorails'
  s.version = NoSoloRails::VERSION
  s.summary = nil
  s.description = nil
  s.authors = ['Javier Aranda', 'Pedro Piquero']
  s.email = ['jaranda@nosolosoftware.es', 'ppiquero@nosolosoftware.es']
  s.license = 'MIT'
  s.date = Date.today.strftime('%Y-%m-%d')
  s.homepage = 'https://github.com/nosolosoftware/nosolorails'

  #
  ## GEM
  #
  s.bindir = 'bin'
  s.executables = %w|nosolorails|
  s.require_paths = %w|lib|
  s.files = s.files = Dir.glob('lib/**/*') + %w|LICENSE README.md|
  s.extra_rdoc_files = %w|README.md LICENSE|
  s.required_ruby_version = '~> 2.2.0'

  #
  ## DEPENDENCIES
  #

  #
  ## DEVELOPMENT DEPENDENCIES
  #
  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
end
