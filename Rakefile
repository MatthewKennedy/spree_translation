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

desc 'Generates a dummy app for testing'
task :test_app do
  ENV['LIB_NAME'] = 'spree_translations'
  Rake::Task['extension:test_app'].invoke
end

desc 'Sync Translation Files'
task :translation_sync do
  exec "cd translation_dummy &&  bundle exec rake translation:sync"
end

desc 'Sync & Purge Translation Files'
task :translation_sync_and_purge do
  exec "cd translation_dummy &&  bundle exec rake translation:sync_and_purge"
end
