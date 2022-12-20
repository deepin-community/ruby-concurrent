require 'gem2deb/rake/spectask'

if ENV['AUTOPKGTEST_TMP'] then
  Gem2Deb::Rake::RSpecTask.new do |spec|
    spec.rspec_opts = '--color --backtrace --format documentation --seed 1'
    spec.pattern = './spec/concurrent/*_spec.rb'
  end
else
  task :default do
    puts "Disable tests during build"
  end
end
