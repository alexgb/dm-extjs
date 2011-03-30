require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "dm-extjs"
  gem.homepage = "http://github.com/alexgb/dm-extjs"
  gem.license = "MIT"
  gem.summary = %Q{DataMapper plugin for serializing resources to work with ExtJs}
  gem.description = %Q{A DataMapper plugin that will serialize and provide meta data descriptions for resources and collections. Compatible with ExtJS and Sencha Touch}
  gem.email = "alex.gibbons@gmail.com"
  gem.authors = ["Alex Gibbons"]
  gem.add_dependency 'dm-serializer'
end
Jeweler::RubygemsDotOrgTasks.new