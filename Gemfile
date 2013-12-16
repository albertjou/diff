source 'https://rubygems.org'

gem 'rails', '3.2.14'

gem 'pg'
gem 'devise'
gem 'geocoder'
gem 'devise'
gem 'rails_12factor'
gem 'omniauth'

#Possible future features
# gem 'mailboxer' # Private messaging
# gem 'ajaxful_rating' # https://github.com/edgarjs/ajaxful-rating

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails-bootstrap'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
end

gem 'jquery-rails'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'

  gem 'annotate'

  gem 'quiet_assets'
  gem 'better_errors'
  # BetterErrors.editor = :sublime if defined? BetterErrors  (initializer)
  # http://localhost:3000/__better_errors (reports last exception for debugging)

  gem 'table_print'
  gem 'binding_of_caller'
  gem 'meta_request'
  # Add RailsPanel extension in the Chrome Web Store
end

group :test do
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'rspec'
end