require "rspec_multi_env/version"
require "rspec_multi_env/environment_configuration"
require "rspec_multi_env/hooks"

module RspecMultiEnv
  def self.setup(&block)
    yield RspecMultiEnv::EnvironmentConfiguration.instance.reset
  end
end