# frozen_string_literal: true

Sidekiq.configure_server do |config|
  config.redis = Settings.redis.to_h
end

Sidekiq.configure_client do |config|
  config.redis = Settings.redis.to_h
end
