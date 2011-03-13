require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "numeral"
    gem.summary = %Q{Converts natural text to numbers}
    gem.description = %Q{Converts natural text like 'twelve', '1/3' and '15' to Rational ruby numbers}
    gem.email = "brady@drw.com"
    gem.homepage = "http://github.com/benrady/numeral"
    gem.authors = ["Ben Rady"]
    gem.add_development_dependency "rspec", ">= 2.0.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new do |t| 
  t.rspec_opts = ["--color"]
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "numeral #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
