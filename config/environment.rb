# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

# Task H: Sending Mail
Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp # | :sendmail | :test
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    address:              "smtp.163.com",
    port:                 25,
    domain:               "Arch",
    authetication:        :plain,
    user_name:            "zyzy5730@163.com",
    password:             "422912573000",
    enable_starttls_auto: true
  }
end
