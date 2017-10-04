class Team
attr_reader :team_name, :players
attr_accessor :coach


def initialize(team_name, players, coach)
@team_name = team_name
@players = players
@coach = coach
@points = 0
end

def add_player(new_player)
  @players << new_player
end

def check_player(name)
  @players.include?(name)
end


def add_points(point)
  @points += point
end

def win_or_loss(result)
  if result == "win"
  add_points(1)
  end
end



end


#def team_name
#  return @team_name
#end

#def players
#  return @players
#end

#def coach
#  return @coach
#end

#def set_coach(new_coach)
#  @coach = new_coach
#end
