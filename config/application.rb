require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

if !Rails.env.production?
  Dotenv::Railtie.load
end

module Bluehelmet
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    config.action_mailer.perform_deliveries = true # Set it to false to disable the email in dev mode
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.default_url_options = { :host => "bluehelmet.software" }


    ActionMailer::Base.smtp_settings = {
        :address        => "smtp.gmail.com",
        :port           => 587,
        :authentication => :plain,
        :user_name      => 'blue.helmet.dev@gmail.com',
        :password       => ENV['GMAIL_PASSWORD']
    }
  end
end
