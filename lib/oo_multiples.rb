require "pry"

# Enter your object-oriented solution here!

# PROBLEM: MULTIPLES OF 3 AND 5
# If we list all of the natural numbers below 10
# that are multiples of 3 or 5, we get 3, 5, 6, and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    1.upto(limit-1).find_all do |i| #limit-1 so it takes range from 1 upto limit, excluding limit (so if limit is 10, range will be 1-9)
      (i % 5 == 0) || (i % 3 == 0)
    end #end loop
  end

  def sum_multiples
    multiples_of_3_or_5 = collect_multiples #call method above, assign to variable multiples_of_3_or_5
    #array.inject(0) {|sum, x| sum + x }
    multiples_of_3_or_5.inject(0) {|sum, x| sum + x }
  end

end #end class

# INSTRUCTIONS
# Code your procedural solution into the lib/multiples.rb file.
# Then when you have finished the procedural solution,
# code your object-oriented solution into the lib/oo_multiples.rb file.
# Run learn until you get all of the RSpec tests to pass.
