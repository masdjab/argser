# - gem spec required attributes:
#   files, name, summary, version
# - gem spec optional attributes:
#   author or authors, description, email, homepage, 
#   license or licenses, metadata

Gem::Specification.new do |s|
  s.name        = 'argser'
  s.version     = '1.0.0.0'
  s.date        = '2019-05-03'
  s.summary     = 'Simple ARGV parser'
  s.description = ''
  s.author      = 'Heryudi Praja'
  s.email       = 'mr_orche@yahoo.com'
  s.files       = ['lib/argser.rb']
  s.homepage    = ''
  s.license     = 'MIT'
  
  # s.add_development_dependency 'rspec', '~> 3.7'
end
