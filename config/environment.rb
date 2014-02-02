# Environment
TEMPLATE_ENV ||= ENV['TEMPLATE_ENV'] ||= 'development'

# Boot up
require File.join(File.dirname(__FILE__), 'boot')

# Load extra tasks (load current environment)
Rgentpl::Initializer.build
