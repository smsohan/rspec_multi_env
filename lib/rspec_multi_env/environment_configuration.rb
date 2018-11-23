module RspecMultiEnv
  class EnvironmentConfiguration
    include Singleton
    attr_accessor :environments

    def current?(env)
      current == env.to_sym
    end

    def current
      @current
    end

    def use(env_name)
      @current = env_name
    end
  end
end
