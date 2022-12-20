gem_version=$(ruby -Ilib -rconcurrent-ruby/concurrent/version.rb -e 'puts "#{Concurrent::VERSION}"')
mkdir -p debian/ruby-concurrent/usr/share/rubygems-integration/all/specifications
ruby debian/gemspec-cleaner.rb
cp debian/concurrent-ruby.gemspec debian/ruby-concurrent/usr/share/rubygems-integration/all/specifications/concurrent-ruby-${gem_version}.gemspec
gem_version_edge=$(ruby -Ilib -rconcurrent-ruby-edge/concurrent/edge/version.rb -e 'puts "#{Concurrent::EDGE_VERSION}"')
cp debian/concurrent-ruby-edge.gemspec debian/ruby-concurrent/usr/share/rubygems-integration/all/specifications/concurrent-ruby-edge-${gem_version_edge}.gemspec
