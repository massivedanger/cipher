source "http://rubygems.org"

group :development do
  gem "shoulda", ">= 0"
  gem "bundler", "~> 1.1.rc"
  gem "jeweler", "~> 1.6.4"
  gem "rcov", ">= 0"
  
  gem "turn", "~> 0.8.3"
  gem "minitest", "~> 2.6.0"
  gem "guard-minitest", "~> 0.4.0"
  
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem "rb-fsevent", "~> 0.4.1"
    gem "growl", "~> 1.0.3" # also install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl disk image
  end
end
