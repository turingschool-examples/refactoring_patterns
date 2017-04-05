require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < Minitest::Test
  def test_it_starts_all_engines
    boaty_mcboatface = Boat.new

    refute boaty_mcboatface.running?

    boaty_mcboatface.start

    assert boaty_mcboatface.running?
  end
end
