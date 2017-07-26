require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/emoji'
require './lib/reunion'

class ReunionTest < Minitest::Test

  def test_it_exists
    reunion = Reunion.new("Denver")
    assert_instance_of Reunion, reunion
  end

  def test_it_has_a_name
    reunion = Reunion.new("Denver")
    assert_equal "Denver", reunion.name
  end

  def test_it_has_activities
    reunion = Reunion.new("Denver")
    assert_equal [], reunion.activities
  end

  def test_adding_activities_to_reunion
    reunion = Reunion.new("Denver")
    reunion.add_activity("Kickball")
    assert_equal ["Kickball"], reunion.activities
  end

end
