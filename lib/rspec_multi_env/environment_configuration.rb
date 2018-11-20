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
      ENV['RSPEC_ENV'].to_sym
    end
  end
end
