Gem::Specification.new do |s|
  s.name = 'funrun'
  s.version = '0.0.1'
  s.date = '2013-11-11'
  s.authors = 'damned'
  s.summary = 'application runner for ruby functional tests'
  s.files = %w(lib/funrun.rb)

  s.add_development_dependency 'rack'
  s.add_development_dependency 'thin'
  s.add_development_dependency 'rspec'
end

