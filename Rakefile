require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'spree/testing_support/extension_rake'

RSpec::Core::RakeTask.new

task :default do
  if Dir['spec/dummy'].empty?
    Rake::Task[:test_app].invoke
    Dir.chdir('../../')
  end
  Rake::Task[:spec].invoke
end

namespace :spree_translations do
  desc 'Generates a dummy app for testing'
  task :test_app do
    ENV['LIB_NAME'] = 'spree_translations'
    Rake::Task['extension:test_app'].invoke
  end

  desc 'Generates a dummy app for translating'
  task :create_translation_dummy_app do
    ENV['LIB_NAME'] = 'spree_translations'
    ENV['DUMMY_PATH'] = 'dummy'
    Rake::Task['extension:test_app'].invoke
   end

  desc 'copy translation.io into your new dummy app pre usage'
  task :set_up_translation_app do
    FileUtils.cp 'lib/generators/spree_translations/templates/translation.rb', 'dummy/config/initializers/translation.rb'
  end

  desc 'Sync Translations'
  task :sync do
    exec "bundle exec rake -f dummy/Rakefile translation:sync"
  end

  desc 'Sync & Purge Translations'
  task :sync_and_purge do
    exec "bundle exec rake -f dummy/Rakefile translation:sync_and_purge"
  end
end
