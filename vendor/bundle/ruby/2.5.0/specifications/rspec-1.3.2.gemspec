# -*- encoding: utf-8 -*-
# stub: rspec 1.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec".freeze
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["The RSpec Development Team".freeze]
  s.date = "2011-04-11"
  s.description = "Behaviour Driven Development for Ruby.".freeze
  s.email = ["rspec-devel@rubyforge.org".freeze]
  s.executables = ["autospec".freeze, "spec".freeze]
  s.files = ["bin/autospec".freeze, "bin/spec".freeze]
  s.homepage = "".freeze
  s.rubyforge_project = "rspec".freeze
  s.rubygems_version = "2.7.7".freeze
  s.summary = "rspec 1.3.2".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<cucumber>.freeze, [">= 0.3"])
      s.add_development_dependency(%q<fakefs>.freeze, [">= 0.2.1"])
      s.add_development_dependency(%q<syntax>.freeze, [">= 1.0"])
      s.add_development_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
    else
      s.add_dependency(%q<cucumber>.freeze, [">= 0.3"])
      s.add_dependency(%q<fakefs>.freeze, [">= 0.2.1"])
      s.add_dependency(%q<syntax>.freeze, [">= 1.0"])
      s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<cucumber>.freeze, [">= 0.3"])
    s.add_dependency(%q<fakefs>.freeze, [">= 0.2.1"])
    s.add_dependency(%q<syntax>.freeze, [">= 1.0"])
    s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.2"])
  end
end
