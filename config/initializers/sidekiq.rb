Sidekiq.configure_server do |config|
  config.redis = { url: "redis://redis" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://redis" }
end
