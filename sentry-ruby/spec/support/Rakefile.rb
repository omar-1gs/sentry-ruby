require "rake"
require "sentry-ruby"

Sentry.init do |config|
  config.dsn = 'http://12345:67890@sentry.localdomain/sentry/42'
end

task :raise_exception do
  1/0
end
