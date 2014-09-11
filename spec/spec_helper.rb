# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

RSpec.configure do |config|

  config.color = true
  config.order = "random"

end