require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LetsPlay
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.browserify_rails.commandline_options = "-t babelify"
    # config.browserify_rails.commandline_options = "-t [ babelify --extension es6 --presets [ es2015 stage-0 react ] ]"
    # # config.browserify_rails.commandline_options = "-t babelify --extension-\".es6\""
  end
end
