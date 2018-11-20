module RspecMultiEnv
  module DSL
    def environment(env_name)
      EnvironmentConfiguration.instance.register env_name
      if EnvironmentConfiguration.instance.current?(env_name)
        yield
      end
    end
  end
end
