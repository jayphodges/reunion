require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ActivityTest < Minitest::Test

  def test_it_exists
    activity = Activity.new("Brunch")
    assert_instance_of Activity, activity
  end

  def test_it_has_a_name
    activity = Activity.new("Brunch")
    assert_equal "Brunch", activity.name
  end

  def test_it_has_participants_hash
    activity = Activity.new("Brunch")
    assert_equal Hash.new, activity.participants
  end
end
