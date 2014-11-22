[
  Cocaine::CommandLine::BackticksRunner,
  Cocaine::CommandLine::PopenRunner,
  Cocaine::CommandLine::PosixRunner,
  Cocaine::CommandLine::ProcessRunner,
].each do |klass|
  klass.class_eval do
    def with_modified_environment(env, &block)
      yield
    end
  end
end
