require ('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test
  def setup()  # you can use this setup function, which will run at the start of every test
      @sports_team = SportsTeam.new("Su Ragazzi Volleyball Club", ["Kelsie", "Sam", "Kirsty", "Katie", "Mhairi", "Claire", "Caitlin"], "Thomas Dowens", 0)
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
  def test_win_or_loss
    assert_equal(3, @sports_team.add_points_following_win("win"))
  end
end
