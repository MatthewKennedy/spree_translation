# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_translations/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_translations'
  s.version     = SpreeTranslations.version
  s.summary     = 'Add extension summary here'
  s.description = 'Add (optional) extension description here'
  s.required_ruby_version = '>= 2.5.0'

  s.author    = 'Matthew Kennedy'
  s.email     = 'm.@kennedy.com'
  s.homepage  = 'https://github.com/your-github-handle/spree_translations'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  # Translate Master Versions.
  s.add_development_dependency 'rails-i18n'
  s.add_development_dependency 'spree_api'
  s.add_development_dependency 'spree_auth_devise'
  s.add_development_dependency 'spree_backend'
  s.add_development_dependency 'spree_core'
  s.add_development_dependency 'spree_dev_tools'
  s.add_development_dependency 'spree_extension'
  s.add_development_dependency 'spree_frontend'
  s.add_development_dependency 'spree_gateway'
  s.add_development_dependency 'translation'
end
