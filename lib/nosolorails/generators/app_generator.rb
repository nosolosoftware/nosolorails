require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module NoSoloRails
  class AppGenerator < Rails::Generators::AppGenerator
    Rails::Generators::AppGenerator::DATABASES.concat( ['mongoid'] )

    class_option :database, type: :string, aliases: "-d", default: "mongoid",
      desc: "Configure for selected database (options: #{DATABASES.join("/")})"

    def finish_template
      invoke :nosolorails_customization
      super
    end

    def nosolorails_customization
      invoke :setup_gemfile
      invoke :setup_database
    end

    def setup_gemfile
      build :replace_gemfile
      build :set_ruby_to_version_being_used
      bundle_command 'install' unless options[:skip_bundle]
    end

    def setup_database
      say "Setting up database"

      if 'mongoid' == options[:database]
        build :use_mongoid_config_template
      end
    end

    protected

    def get_builder_class
      NoSoloRails::AppBuilder
    end
  end
end
