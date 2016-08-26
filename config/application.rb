require File.expand_path('../boot', __FILE__)

require "rails"
require "active_model/railtie"
require "action_controller/railtie"
Bundler.require(*Rails.groups)

module ShaChecker
  class Application < Rails::Application
    config.cache_store = :redis_store, ENV['REDIS_URL'], { expires_in: 30.days }
  end
end
