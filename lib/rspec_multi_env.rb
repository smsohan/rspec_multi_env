require "rspec_multi_env/version"
require "rspec_multi_env/environment_configuration"
require "rspec_multi_env/hooks"

module RspecMultiEnv
  def self.setup(*envs)
    if block_given?
      yield RspecMultiEnv::EnvironmentConfiguration.instance.reset
    else
      RspecMultiEnv::EnvironmentConfiguration.instance.reset
      envs.each do |env|
        RspecMultiEnv::EnvironmentConfiguration.instance.register(env)
      end
    end
  end

  def self.use(env_name)
    RspecMultiEnv::EnvironmentConfiguration.instance.use env_name
  end

  def self.current?(env_name)
    RspecMultiEnv::EnvironmentConfiguration.instance.current? env_name
  end
end
