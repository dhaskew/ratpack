require 'rspec/core'
require 'rspec/core/rake_task'

task :default => :spec

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec)

#import rake tasks from "./tasks" directory
Dir.glob('tasks/*.rake').each { |r| import r }
