# -*- encoding: utf-8 -*-
# stub: dry-configurable 0.8.3 ruby lib

Gem::Specification.new do |s|
  s.name = "dry-configurable".freeze
  s.version = "0.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/dry-rb/dry-configurable/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/dry-rb/dry-configurable" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andy Holland".freeze]
  s.date = "2019-05-29"
  s.email = ["andyholland1991@aol.com".freeze]
  s.homepage = "https://github.com/dry-rb/dry-configurable".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "2.7.7".freeze
  s.summary = "A mixin to add configuration functionality to your classes".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<dry-core>.freeze, [">= 0.4.7", "~> 0.4"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<dry-core>.freeze, [">= 0.4.7", "~> 0.4"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<dry-core>.freeze, [">= 0.4.7", "~> 0.4"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
