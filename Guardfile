notification :growl

# Bundler
guard :bundler do
  watch('Gemfile')
end

# Yard (documentation)
guard :yard,
  stdout: 'log/yard.log' do

  watch(%r{lib/.+\.rb})
  watch(%r{vendor/.+\.rb})
end

# Cane (code metrics)
guard :cane do
  watch(%r{^(.+)\.rb$})
end

# Rubycritic (code metrics)
guard 'rubycritic' do
  watch(%r{^lib/(.+)\.rb$})
end

group :red_green_refactor, halt_on_fail: true do
  # RSpec
  guard :rspec,
    cmd:              'rspec -f html -o ./tmp/spec_results.html --fail-fast',
    launchy:          false,
    all_on_start:     false,
    failed_mode:      :focus,
    notification:     true do
      watch(%r{^spec/.+_spec\.rb$})
      watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
      watch('spec/spec_helper.rb')  { "spec" }

      # Turnip features and steps
      watch(%r{^spec/acceptance/(.+)\.feature$})
      watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$})   { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance' }
    end

    # Rubocop (code style checker)
    guard :rubocop,
      all_on_start: false,
      hide_stdout: false,
      cli: ['--out tmp/rubocop_results.html', '--format html', '--rails'],
      notification: true do

      watch(%r{.+\.rb$})
      watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
    end
end
