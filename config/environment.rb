# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { :host => 'app4c75e3597ee5485792bcaa0a8cdcfb0e.mailgun.org' }

