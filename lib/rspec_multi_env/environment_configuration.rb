module RspecMultiEnv
  class EnvironmentConfiguration
    include Singleton
    attr_accessor :environments

    def reset
      @environments = []
      self
    end

    def when(name, &block)
      register(name)
      if current?(name)
        yield
      end
    end

    def register(name)
      @environments << name
    end

    def registered?(name)
      @environments.include?(name)
    end

    def current?(env)
      current == env.to_sym
    end

    def current_environment_registered?
      registered?(current)
    end

    def current
      @current
    end

    def use(env_name)
      @current = env_name
    end
  end
end
