source 'https://rubygems.org'
ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.3'

gem 'rails'
gem 'omniauth-twitter'
gem 'jruby-openssl'
gem 'puma'

group :development, :test do
  gem 'activerecord-jdbcsqlite3-adapter'
end

group :production do
  gem 'activerecord-jdbcpostgresql-adapter'
  gem 'newrelic_rpm'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyrhino', :platform => 'ruby'
  gem 'uglifier', '>= 1.0.3'
  gem 'zurb-foundation', '~> 4.0.0'
end

gem 'jquery-rails'
