class SportsTeam
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end
  def team_name
    return @team_name
  end
  def players
    return @players
  end
  def coach_name
    return @coach
  end
  def set_coach_name(name)
    @coach = name
  end
  def add_player_to_team(new_player)
    @players << new_player
  end
  def is_player_in_team(players_name)
    for person in @players
      if person == players_name
        return true
      else
        return false
      end
    end
  end
  def add_points_following_win(result)
    if result == "win"
      @points += 3
    end
  end
end
