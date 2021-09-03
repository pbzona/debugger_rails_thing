require 'ldclient-rb'

Rails.configuration.client = LaunchDarkly::LDClient.new("sdk-fe063b32-c1e6-44b5-9c91-11d28f7d79b5")

if Rails.configuration.client.initialized?
  puts "SDK successfully initialized!"
else
  puts "SDK failed to initialize"
  exit 1
end