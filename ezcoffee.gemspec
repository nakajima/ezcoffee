Gem::Specification.new do |s|
  s.name        = 'ezcoffee'
  s.version     = '0.0.1'
  s.executables << 'ezcoffee'
  s.date        = '2015-02-11'
  s.summary     = "Generate basic coffeescript projects"
  s.description = "Generate really basic coffeescript projects"
  s.authors     = ["Pat Nakajima"]
  s.email       = 'patnakajima@gmail.com'
  s.files       = [
    "bin/ezcoffee",
    "lib/generate.rb",
    "lib/runner.rb",
    "lib/index.erb"
  ]
  s.homepage    = 'https://github.com/nakajima/ezcoffee'
  s.license     = 'MIT'
end
