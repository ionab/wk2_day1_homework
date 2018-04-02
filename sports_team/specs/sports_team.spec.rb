# # Now we would like you to make a class that
#represents a sports team.
# #
# # * Make a class to represent a Team that
# has the properties Team name (String),
# Players (array of strings) and a Coach (String).
# # * For each property in the class make a getter
#  method than can return them.
# # * Create a setter method to allow the coach's
# name to be updated.
# # * Refactor the class to use `attr_reader`
# or `attr_accessor` instead of your own getter and setter methods.
# # * Create a method that adds a new player to the players array.
# # * Add a method that takes in a string of
# a player's name and checks to see if they are in the players array.
# # * Add a points property into your class that starts at 0.
# # * Create a method that takes in whether the team
# has won or lost and updates the points property for a win.

require ('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test
  def setup()  # you can use this setup function, which will run at the start of every test
      @sports_team = SportsTeam.new("Su Ragazzi Volleyball Club", ["Kelsie", "Sam", "Kirsty", "Katie", "Mhairi", "Claire", "Caitlin"], "Thomas Dowens")
  end
  def test_team_name
    assert_equal("Su Ragazzi Volleyball Club", @sports_team.team_name)
  end
  def test_players
    assert_equal(["Kelsie", "Sam", "Kirsty", "Katie", "Mhairi", "Claire", "Caitlin"], @sports_team.players)
  end
  def test_coach_name
    assert_equal("Thomas Dowens", @sports_team.coach_name)
  end
  def test_set_coach_name
    @sports_team.set_coach_name("Vince")
    assert_equal("Vince", @sports_team.coach_name)
  end
  def test_add_new_player_to_team
    assert_equal(["Kelsie", "Sam", "Kirsty", "Katie", "Mhairi", "Claire", "Caitlin", "Alice"], @sports_team.add_player_to_team("Alice"))
  end

  def test_is_player_in_team
    assert_equal(true, @sports_team.is_player_in_team("Kelsie"))
  end
end
