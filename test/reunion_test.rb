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

  def test_reunion_total_cost
    reunion = Reunion.new("Denver")
    activity_1 = Activity.new("Brunch")
    activity_1.add_participant("Jim", 20)
    activity_1.add_participant("Joe", 40)
    reunion.add_activity(activity_1)
    assert_equal 60 ,reunion.total_cost
    activity_2 = Activity.new("Drinks")
    activity_2.add_participant("Jim", 60)
    activity_2.add_participant("John", 80)
    reunion.add_activity(activity_2)
    assert_equal 200, reunion.total_cost
  end

  def test_reunion_breakout_for_attendees

  end

  def test_printing_reunion_summary

  end


end
