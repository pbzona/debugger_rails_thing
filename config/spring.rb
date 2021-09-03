Spring.watch(
  ".ruby-version",
  ".rbenv-vars",
  "tmp/restart.txt",
  "tmp/caching-dev.txt"
)

Spring.after_fork do
  Rails.configuration.client = LaunchDarkly::LDClient.new('sdk-fe063b32-c1e6-44b5-9c91-11d28f7d79b5')
end