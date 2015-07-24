require_relative 'lib/nosolorails/version'
require 'date'

Gem::Specification.new do |s|
  #
  ## INFORMATION
  #
  s.name = 'nosolorails'
  s.version = NoSoloRails::VERSION
  s.summary = 'This is the rails generator used at NoSoloSoftware'
  s.description = <<-END
  This is the rails generator used at NoSoloSoftware. It creates a new rails project
  with the following gems:
- General gems:
  - angular-rails-templates
  - i18n-js
  - ngannotate-rails
  - pundit
  - sass-rails
  - uglifier
- Assets:
  - rails-assets-angular
  - rails-assets-jquery
  - rails-assets-ng-lodash
  - rails-assets-ui-router
- Development tools:
  - better_errors
  - guard_bundler
  - guard_rails
  - guard_rake
  - guard_rspec
  - libnotify
- Test tools:
  - capybara-screenshot
  - cucumber-rails
  - database_cleaner
  - email_spec
  - fuubar
  - poltergeist
  - require_all
  - rspec-rails
  - selenium-webdriver
  - shoulda-matchers
  - simplecov
- Development and Test tools:
  - byebug
  - dotenv_rails
  - factory_girl_rails
  - faker
  - pry
  - pry-byebug
- Production:
  - airbrake
  - unicorn
  END
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
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', NoSoloRails::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
end
