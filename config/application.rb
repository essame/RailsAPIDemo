require File.expand_path('../boot', __FILE__)

require 'active_record/railtie'

Bundler.require(*Rails.groups)

module RailsAPIDemo
  class Application < Rails::Application
    config.middleware.delete Rack::Sendfile
    config.middleware.delete Rack::MethodOverride
    config.middleware.delete ActionDispatch::Cookies
    config.middleware.delete ActionDispatch::Session::CookieStore
    config.middleware.delete ActionDispatch::Flash
  end
end
