source 'https://rubygems.org'

ruby File.read(File.expand_path '../.ruby-version', __FILE__).strip.sub /\-p[0-9]+$/, '' # Read the rbenv version file

gem 'rails', '4.2.4'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'
gem 'pry-rails'

group :production do
  gem 'rails_12factor'
end


group :development, :test do
  gem 'pry-byebug'
  gem 'dotenv-rails'
end

