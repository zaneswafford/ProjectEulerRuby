require 'minitest/autorun'
require 'minitest/pride'
require './lib/problems/problem10'

class TestProblem10 < Minitest::Test
  def setup
    @problem10 = Problem10.new
  end
  
  def test_solution_answer
    assert_equal 142913828922, @problem10.solve
  end

  def test_solution_time
    time_taken = Benchmark.realtime do
      @problem10.solve
    end
    
    max_time = ENV["MAX_TIME"] || 30
    
    assert time_taken < max_time, "Problem 10 took #{max_time*1000}ms"
  end
end