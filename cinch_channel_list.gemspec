Gem::Specification.new do |s|
  s.name        = 'cinch_channel_list'
  s.version     = '0.0.4'
  s.date        = '2014-05-09'
  s.summary     = 'Cinch Channel List'
  s.description = 'A Cinch IRC plugin for getting channel lists'
  s.authors     = ['Jonathan Chapman']
  s.email       = 'glitch@glitchwrks.com'
  s.files       = Dir['LICENSE', 'README.md', '{examples,lib}/**/*']
  s.homepage    = 'https://github.com/chapmajs/cinch_channel_list'
  s.license     = 'GPLv3'
  
  s.add_dependency 'cinch', '~> 2.0'
end
