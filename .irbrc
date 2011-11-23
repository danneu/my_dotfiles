# gem install wirb for syntax highlighting
require 'wirb'
Wirb.start

require 'ori'

# quick benchmarking
def quick(repetitions=100, &block)
  require 'benchmark'
  Benchmark.bmbm do |b|
    b.report {repetitions.times &block}
  end
  nil
end

# predefined Array.toy and Hash.toy
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n, &block) : Array.new(n) {|i| i+1}
  end
end
class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

# TIPS
# * object.method(:method_name) tells you what defines the method
# * gem install utility_belt
# * gem install ori --> .irbrc: require 'ori'
