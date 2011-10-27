# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cipher"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Walsh"]
  s.date = "2011-10-27"
  s.description = "TODO: longer description of your gem"
  s.email = "evan@massivedanger.com"
  s.executables = ["cipher"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/cipher",
    "lib/cipher.rb",
    "lib/cipher/generator.rb",
    "lib/cipher/validator.rb",
    "lib/cipher/version.rb",
    "test/helper.rb",
    "test/test_cipher.rb"
  ]
  s.homepage = "http://github.com/evanwalsh/cipher"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "TODO: one-line summary of your gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.1.rc"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<turn>, ["~> 0.8.3"])
      s.add_development_dependency(%q<minitest>, ["~> 2.6.0"])
      s.add_development_dependency(%q<guard-minitest>, ["~> 0.4.0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.4.1"])
      s.add_development_dependency(%q<growl>, ["~> 1.0.3"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.1.rc"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<turn>, ["~> 0.8.3"])
      s.add_dependency(%q<minitest>, ["~> 2.6.0"])
      s.add_dependency(%q<guard-minitest>, ["~> 0.4.0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.4.1"])
      s.add_dependency(%q<growl>, ["~> 1.0.3"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.1.rc"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<turn>, ["~> 0.8.3"])
    s.add_dependency(%q<minitest>, ["~> 2.6.0"])
    s.add_dependency(%q<guard-minitest>, ["~> 0.4.0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.4.1"])
    s.add_dependency(%q<growl>, ["~> 1.0.3"])
  end
end
