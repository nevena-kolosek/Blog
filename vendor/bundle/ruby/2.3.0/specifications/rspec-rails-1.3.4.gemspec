# -*- encoding: utf-8 -*-
# stub: rspec-rails 1.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-rails".freeze
  s.version = "1.3.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["RSpec Development Team".freeze]
  s.date = "2011-04-11"
  s.description = "Behaviour Driven Development for Ruby on Rails.".freeze
  s.email = ["rspec-devel@rubyforge.org".freeze]
  s.homepage = "http://github.com/dchelimsky/rspec-rails".freeze
  s.rubyforge_project = "rspec".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "rspec-rails 1.3.4".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>.freeze, ["~> 1.3.1"])
      s.add_runtime_dependency(%q<rack>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<cucumber>.freeze, [">= 0.3.99"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 1.3.1"])
      s.add_dependency(%q<rack>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<cucumber>.freeze, [">= 0.3.99"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 1.3.1"])
    s.add_dependency(%q<rack>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0.3.99"])
  end
end
