Gem::Specification.new do |spec|
  spec.name = "studio_game"
  spec.version = "2.0.0"
  spec.license = "MIT"
  spec.author = "The Pragmatic Studio"
  spec.email = "support@pragmaticstudio.com"
  spec.summary = "A command-line, randomized studio game."
  spec.homepage = "https://pragmaticstudio.com"

  spec.files = Dir["{bin,lib}/**/*"] + %w[LICENSE.txt]
  spec.executables = ["studio_game"]

  spec.required_ruby_version = ">= 3.2.0"
end
