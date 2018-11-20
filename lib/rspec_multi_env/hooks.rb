RSpec.configure do |config|
  config.before :context do |context|
    unless RspecMultiEnv::EnvironmentConfiguration.instance.current_environment_registered?
      context.skip
    end
  end
end
