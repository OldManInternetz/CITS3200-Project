require File.expand_path('../boot', __FILE__)

require 'csv'
require 'rails/all'

ENV["RAILS_ASSET_ID"] = "" # disable timestamps at end of asset files for offline browsing

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Plantsuwa
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

		I18n.enforce_available_locales = true
		config.time_zone = 'Australia/Perth'

    # This will make it easier to organise our models. Yay!
    config.autoload_paths += Dir[Rails.root.join('app', 'models', '{**/}')]

  end
end
