ENV['HOME'] ||= `echo ~`.strip
ENV['GEM_PATH'] = File.expand_path('~/.gems') + ":" + '/usr/lib/ruby/gems/1.9'
ENV['GEM_HOME'] = File.expand_path('~/.gems')
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
WarehouseJoekowalskyCom::Application.initialize!

