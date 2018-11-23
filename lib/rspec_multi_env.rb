require "rspec_multi_env/version"
require "rspec_multi_env/environment_configuration"

module RspecMultiEnv
  def self.use(env_name)
    RspecMultiEnv::EnvironmentConfiguration.instance.use env_name
  end

  def self.current?(env_name)
    RspecMultiEnv::EnvironmentConfiguration.instance.current? env_name
  end

  def self.on?(*envs)
    envs.any?{|env| RspecMultiEnv::EnvironmentConfiguration.instance.current?(env)}
  end
end
