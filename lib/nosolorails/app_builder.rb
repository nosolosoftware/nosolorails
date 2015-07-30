module NoSoloRails
  class AppBuilder < Rails::AppBuilder
    include NoSoloRails::Actions

    def replace_gemfile
      remove_file 'Gemfile'
      template 'Gemfile.erb', 'Gemfile'
    end

    def set_ruby_to_ruby_version_being_used
      create_file '.ruby-version', "#{NoSoloRails::RUBY_VERSION}\n"
    end

    def use_mongoid_config_template
      say 'Generating mongodb configuration'
      generate 'mongoid:config'

      say 'Removing old configuration'
      remove_file 'config/database.yml'

      say 'Replacing require \'rails/all\''
      gsub_file 'config/application.rb', 'require \'rails/all\'', <<-EOF
require "action_controller/railtie"
require "action_mailer/railtie"
require "rails/test_unit/railtie"
      EOF

      say 'Removing active record'
      remove_active_record_from 'config/application.rb'
      remove_active_record_from 'config/environments/development.rb'

      say 'Removing blank spaces'
      remove_blank_spaces_from 'config/mongoid.yml'
      remove_blank_spaces_from 'config/application.rb'
      remove_blank_spaces_from 'config/environments/development.rb'
    end
  end
end
