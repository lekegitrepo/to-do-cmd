# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','to-do-cmd','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'to-do-cmd'
  s.version = ToDoCmd::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','to-do-cmd.rdoc']
  s.rdoc_options << '--title' << 'to-do-cmd' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'to-do-cmd'
  s.add_development_dependency('rake','~> 0.9.2')
  s.add_development_dependency('rdoc', '~> 4.3')
  s.add_development_dependency('rspec')
  s.add_runtime_dependency('gli','~> 2.21.0')
end
