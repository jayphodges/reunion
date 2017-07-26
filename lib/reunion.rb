require './lib/activity'
require 'pry'
class Reunion

  attr_reader :name,
              :activities

  def initialize(name)
    @name = name
    @activities = []
  end

  def add_activity(name)
    @activities << name
  end

  def total_cost
    sum = []
    @activities.each {|act| sum << act.total_cost}
    sum.reduce(:+)
  end

  def breakout

  end

  def print_summary

  end

end
