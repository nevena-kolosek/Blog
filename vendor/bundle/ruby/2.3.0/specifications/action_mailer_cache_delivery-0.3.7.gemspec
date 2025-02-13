# -*- encoding: utf-8 -*-
# stub: action_mailer_cache_delivery 0.3.7 ruby lib

Gem::Specification.new do |s|
  s.name = "action_mailer_cache_delivery".freeze
  s.version = "0.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Rodionov".freeze]
  s.date = "2013-09-30"
  s.description = "Cache delivery method for ActionMailer for testing emails with Selenium".freeze
  s.email = "p0deje@gmail.com".freeze
  s.homepage = "https://github.com/p0deje/action_mailer_cache_delivery".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Cache delivery method for ActionMailer".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.8"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 0.9"])
    else
      s.add_dependency(%q<actionmailer>.freeze, [">= 3.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.8"])
      s.add_dependency(%q<rake>.freeze, ["~> 0.9"])
    end
  else
    s.add_dependency(%q<actionmailer>.freeze, [">= 3.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.8"])
    s.add_dependency(%q<rake>.freeze, ["~> 0.9"])
  end
end
