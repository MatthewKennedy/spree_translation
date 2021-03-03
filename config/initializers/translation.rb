TranslationIO.configure do |config|
  config.api_key        = '40ba8744588a49e0b0b9d0c265fe3fad'
  config.source_locale  = 'en'
  config.target_locales = ['de']

  # Uncomment this if you don't want to use gettext
  # config.disable_gettext = true

  # Uncomment this if you already use gettext or fast_gettext
  # config.locales_path = File.join('path', 'to', 'gettext_locale')

  # Find other useful usage information here:
  # https://github.com/translation/rails#readme
end
