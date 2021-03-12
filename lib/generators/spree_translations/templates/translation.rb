TranslationIO.configure do |config|
  config.api_key        = ENV["TRANSLATION_IO_API_KEY"]
  config.source_locale  = 'en'
  config.target_locales = ['de', 'no', 'it', 'fr']
  config.yaml_locales_path = '../config/locales'
  config.disable_gettext = true

  config.ignored_key_prefixes = [
    'hello',
    'date',
    'spree.at_symbol',
    'spree.date_picker',
    'spree.i18n.this_file_language'
  ]
end
