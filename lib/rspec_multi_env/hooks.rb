RSpec.configure do |config|
  config.include RspecMultiEnv::DSL

  config.before(:all) do
    RspecMultiEnv::EnvironmentConfiguration.instance.reset
  end

  config.around(:example) do |example|
    if RspecMultiEnv::EnvironmentConfiguration.instance.current_environment_registered?
      example.run
    else
      example.skip
    end
  end
end
