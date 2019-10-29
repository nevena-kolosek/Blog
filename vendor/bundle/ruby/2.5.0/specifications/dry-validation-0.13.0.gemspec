# -*- encoding: utf-8 -*-
# stub: dry-validation 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "dry-validation".freeze
  s.version = "0.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Andy Holland".freeze, "Piotr Solnica".freeze]
  s.date = "2019-01-29"
  s.email = ["andyholland1991@aol.com".freeze, "piotr.solnica@gmail.com".freeze]
  s.homepage = "https://github.com/dry-rb/dry-validation".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "A simple validation library".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<dry-configurable>.freeze, [">= 0.1.3", "~> 0.1"])
      s.add_runtime_dependency(%q<dry-equalizer>.freeze, ["~> 0.2"])
      s.add_runtime_dependency(%q<dry-logic>.freeze, [">= 0.5.0", "~> 0.5"])
      s.add_runtime_dependency(%q<dry-types>.freeze, [">= 0.14", "~> 0.14"])
      s.add_runtime_dependency(%q<dry-core>.freeze, [">= 0.2.1", "~> 0.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    else
      s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
      s.add_dependency(%q<dry-configurable>.freeze, [">= 0.1.3", "~> 0.1"])
      s.add_dependency(%q<dry-equalizer>.freeze, ["~> 0.2"])
      s.add_dependency(%q<dry-logic>.freeze, [">= 0.5.0", "~> 0.5"])
      s.add_dependency(%q<dry-types>.freeze, [">= 0.14", "~> 0.14"])
      s.add_dependency(%q<dry-core>.freeze, [">= 0.2.1", "~> 0.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<concurrent-ruby>.freeze, ["~> 1.0"])
    s.add_dependency(%q<dry-configurable>.freeze, [">= 0.1.3", "~> 0.1"])
    s.add_dependency(%q<dry-equalizer>.freeze, ["~> 0.2"])
    s.add_dependency(%q<dry-logic>.freeze, [">= 0.5.0", "~> 0.5"])
    s.add_dependency(%q<dry-types>.freeze, [">= 0.14", "~> 0.14"])
    s.add_dependency(%q<dry-core>.freeze, [">= 0.2.1", "~> 0.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
  end
end
