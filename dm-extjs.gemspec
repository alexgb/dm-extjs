# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dm-extjs"
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Gibbons"]
  s.date = "2012-05-29"
  s.description = "A DataMapper plugin that will serialize and provide meta data descriptions for resources and collections. Compatible with ExtJS and Sencha Touch"
  s.email = "alex.gibbons [a] gmail [dot] com"
  s.extra_rdoc_files = [
    "LICENSE.txt"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "Rakefile",
    "Readme.md",
    "VERSION",
    "dm-extjs.gemspec",
    "lib/dm-extjs.rb",
    "lib/dm-extjs/collection.rb",
    "lib/dm-extjs/model.rb",
    "lib/dm-extjs/resource.rb",
    "test/helper.rb",
    "test/test_dm-extjs.rb"
  ]
  s.homepage = "http://github.com/alexgb/dm-extjs"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "DataMapper plugin for serializing resources to work with ExtJs"
  s.test_files = [
    "test/helper.rb",
    "test/test_dm-extjs.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<dm-serializer>, [">= 0"])
      s.add_runtime_dependency(%q<dm-aggregates>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<dm-serializer>, [">= 0"])
      s.add_dependency(%q<dm-aggregates>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<dm-serializer>, [">= 0"])
    s.add_dependency(%q<dm-aggregates>, [">= 0"])
  end
end

