require 'minitest/autorun'
require 'minitest/pride'
require './lib/plane'

class PlaneTest < Minitest::Test
  def test_it_starts_all_engines
    dusty = Plane.new
    engine_1, engine_2 = dusty.engines

    # Here we are making sure the engines are stopped
    # These assertions are OK. Don't alter them :)
    refute engine_1.running?
    refute engine_2.running?

    # ============= Refactor below
    dusty.engines.each{|e| e.start}
    # ============= Refactor above

    # These assertions are OK. Don't alter them :)
    assert engine_1.running?
    assert engine_2.running?
  end
end
