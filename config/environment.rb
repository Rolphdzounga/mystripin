# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {

	:address => 'smtp.sendgrid.net',

	:port => '587',

	:authentication => :plain,

	:user_name => ENV['SENDGRID_USER_MS'],

	:password => ENV['SENDGRID_PWD_MS'],

	:domain => 'heroku.com',

	:enable_starttls_auto => true

}
