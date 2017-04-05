class Boat
  def initialize
    @motor_1_running = false
    @motor_2_running = false
  end

  def start
    @motor_1_running = true
    @motor_2_running = true
  end

  def running?
    @motor_1_running && @motor_2_running
  end
end
