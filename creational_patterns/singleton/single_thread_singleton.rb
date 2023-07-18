class SingleThreadSingleton
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def call
    puts 'This is a single thread Singleton'
  end
end

# single_thread_singleton_instance = SingleThreadSingleton.instance
# single_thread_singleton_instance.call