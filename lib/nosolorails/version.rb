module NoSoloRails
  RAILS_VERSION = '~> 4.2.0'
  RUBY_VERSION = IO.read( File.join( File.dirname( __FILE__ ), '..', '..', '.ruby-version' ) ).strip
  VERSION = '0.0.1'
end
