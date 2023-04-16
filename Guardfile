guard :bundler do
  watch("Gemfile")
end

guard :yard,
  stdout: "log/yard.log" do
  watch(%r{lib/.+\.rb})
end

guard :rubycritic do
  watch(%r{^lib/(.+)\.rb$})
end

guard :standardrb, fix: false, all_on_start: false, progress: false do
  watch(/.+\.rb$/)
end

guard :rspec,
  cmd: "bundle exec rspec --fail-fast",
  all_on_start: false,
  failed_mode: :focus do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch("spec/spec_helper.rb") { "spec" }
end
