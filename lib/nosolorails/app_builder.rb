module NoSoloRails
  class AppBuilder < Rails::AppBuilder
    include NoSoloRails::Actions
  end
end
