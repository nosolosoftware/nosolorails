require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module NoSoloRails
  class AppGenerator < Rails::Generators::AppGenerator
    # TODO: add class options

    def finish_template
      invoke :nosolorails_customization
      super
    end

    def nosolorails_customization
      # TODO: add specific customization
    end

    protected

    def get_builder_class
      NoSoloRails::AppBuilder
    end
  end
end
