TranslationIO.configure do |config|
  config.api_key        = '40ba8744588a49e0b0b9d0c265fe3fad'
  config.source_locale  = 'en'
  config.target_locales = ['de', 'no']
  config.yaml_locales_path = '../../config/locales'
  config.disable_gettext = true
end
