require 'pry'
class Activity

  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, cost)
    @participants[name] = cost
  end

  def total_cost
    sum = []
    @participants.each_pair do |key, value|
      sum << value
    end
    sum.reduce(:+)
  end

  def split
    total_cost / @participants.count
  end

  def owed
    owed = Hash.new
    @participants.each_pair do |key, value|
      owed[key] =  (split - value)
    end
    owed
  end

end
# activity = Activity.new("Brunch")
# activity.add_participant("Jim", 20)
# activity.add_participant("Joe", 40)
#
# binding.pry
