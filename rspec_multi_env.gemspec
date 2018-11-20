
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rspec_multi_env/version"

Gem::Specification.new do |spec|
  spec.name          = "rspec_multi_env"
  spec.version       = RspecMultiEnv::VERSION
  spec.authors       = ["smsohan"]
  spec.email         = ["sohan39@gmail.com"]

  spec.summary       = %q{Allows the same set of tests to run against multiple environments}
  spec.description   = %q{If you want to run a suite of tests against multiple sets of environments, you can use this gem to simplify the setup}
  spec.homepage      = "https://github.com/smsohan/rspec_multi_env"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/smsohan/rspec_multi_env"
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
