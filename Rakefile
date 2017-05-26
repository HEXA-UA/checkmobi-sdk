require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc 'Build Gem'
task :build do
  system 'gem build checkmobi-ruby.gemspec'
end

RSpec::Core::RakeTask.new(:spec)

desc 'Run all tests'
RSpec::Core::RakeTask.new('spec:all') do |t|
  # t.rscpec_opts = %w(--colour --fortmat documentation)
  # t.pattern = 'spec/**/*_spec.rb'
end

task :default => :spec

task :console do
  sh 'pry --gem'
end
