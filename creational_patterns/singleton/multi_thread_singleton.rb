class MultiThreadSingleton
  attr_reader :value

  @instance_mutex = Mutex.new

  private_class_method :new

  def initialize(value)
    @value = value
  end

  def self.instance(value)
    return @instance if @instance

    @instance_mutex.synchronize do
      @instance ||= new(value)
    end

    @instance
  end

  def call
    puts "This is a multi thread Singleton with value - #{value}"
  end
end

# foo_process = Thread.new { MultiThreadSingleton.instance('FOO').call }
# bar_process = Thread.new { MultiThreadSingleton.instance('BAR').call }
# foo_process.join
# bar_process.join