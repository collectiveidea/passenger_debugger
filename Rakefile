require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name     = "passenger_debugger"
    s.summary  = "Remote Debugging for Phusion Passenger"
    s.email    = "redinger@gmail.com"
    s.homepage = "http://github.com/redinger/passenger_debugger"
    s.authors  = ["Christopher Redinger"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'passenger_debugger'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

task :default => :test
