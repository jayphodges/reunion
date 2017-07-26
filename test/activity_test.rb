require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

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

    def test_total_cost_of_activity
      activity = Activity.new("Brunch")
      activity.add_participant("Jim", 20)
      activity.add_participant("Joe", 40)
      assert_equal 60, activity.total_cost
      activity.add_participant("Bob", 60)
      assert_equal 120, activity.total_cost
    end

    def test_activity_split
      activity = Activity.new("Brunch")
      activity.add_participant("Jim", 20)
      activity.add_participant("Joe", 40)
      assert_equal 30, activity.split
      activity.add_participant("Bob", 60)
      assert_equal 40, activity.split
    end

    def test_activity_owed_users
      activity = Activity.new("Brunch")
      activity.add_participant("Jim", 20)
      activity.add_participant("Joe", 40)
      first_activity = {"Jim"=>10, "Joe"=>-10}
      assert_equal first_activity, activity.owed
      activity.add_participant("Bob", 60)
      second_activity = {"Jim"=>20, "Joe"=>0, "Bob"=>-20}
      assert_equal second_activity, activity.owed
    end

end
