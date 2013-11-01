# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SampleApp::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'ggupta13',
  :password => 'foobar',
  :domain => 'oneplusoneassignment.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
