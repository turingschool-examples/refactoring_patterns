require './lib/engine'

class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(2) { Engine.new }
  end

  def body_weight
    1000
  end

  def weight
    engine_weight = @engines.inject(0) do |sum, engine|
      sum + engine.core_weight + engine.propeller_weight
    end

    body_weight + engine_weight
  end
end
