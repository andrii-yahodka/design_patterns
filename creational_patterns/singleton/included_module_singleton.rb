require 'singleton'

class IncludedModuleSingleton
  include Singleton

  def initialize
    puts 'IncludedModuleSingleton was initialized'
  end

  def call
    puts 'This is an included module Singleton'
  end
end

# Singleton class in initialized only once

# IncludedModuleSingleton.instance
# IncludedModuleSingleton was initialized
#  => #<IncludedModuleSingleton:0x00007f946ca5f9a8> 

# IncludedModuleSingleton.instance
#  => #<IncludedModuleSingleton:0x00007f946ca5f9a8> 

# IncludedModuleSingleton.instance
#  => #<IncludedModuleSingleton:0x00007f946ca5f9a8>

# *     *     *

# require './creational_patterns/singleton/included_module_singleton.rb'
#  => true 

# singleton_1 = IncludedModuleSingleton.instance
# singleton_1.call
# This is an included module Singleton
#  => nil 

# class << IncludedModuleSingleton
#   def call
#     puts 'This is a redefined class of included module Singleton'
#   end
# end
#  => :call 

# singleton_1.call
# This is an included module Singleton
#  => nil 

# singleton_2 = IncludedModuleSingleton.instance
# singleton_2.call
# This is an included module Singleton
#  => nil 

# class << singleton_2
#   def call
#     puts 'This is a 2nd version of redefined class of included module Sinleton'
#   end
# end
#  => :call 

# singleton_2.call
# This is a 2nd version of redefined class of included module Sinleton
#  => nil 

# singleton_3 = IncludedModuleSingleton.instance
# singleton_3.call
# This is a 2nd version of redefined class of included module Sinleton
#  => nil 

# singleton_3
#  => #<IncludedModuleSingleton:0x00007fddae82dd98> 
# singleton_2
#  => #<IncludedModuleSingleton:0x00007fddae82dd98> 
# singleton_1
#  => #<IncludedModuleSingleton:0x00007fddae82dd98>