require 'gem2deb/metadata'
ENV['DH_RUBY_GEMSPEC']='concurrent-ruby.gemspec'
@metadata=Gem2Deb::Metadata.new('.')
File.open('debian/concurrent-ruby.gemspec', 'w') do |file|
  file.write(@metadata.gemspec.to_ruby)
end
ENV['DH_RUBY_GEMSPEC']='concurrent-ruby-edge.gemspec'
@metadata2=Gem2Deb::Metadata.new('.')
File.open('debian/concurrent-ruby-edge.gemspec', 'w') do |file|
  file.write(@metadata2.gemspec.to_ruby)
end
