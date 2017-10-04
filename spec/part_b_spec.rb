require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b.rb')

class TestTeam < MiniTest::Test
@team

def setup
@team = Team.new("Dizzy Dachshunds", ["Westie", "Bestie", "Zesty"], "Ms V")
end

def test_team_name
  assert_equal("Dizzy Dachshunds", @team.team_name)
end

def test_players
  assert_equal(["Westie", "Bestie", "Zesty"], @team.players)
end

def test_coach
  assert_equal("Ms V", @team.coach)
end

def test_set_coach
  @team.coach = "Ms XO"
  assert_equal("Ms XO", @team.coach)
end

def test_add_player
  @team.add_player("Lulu")
  assert_equal(["Westie", "Bestie", "Zesty", "Lulu"], @team.players)
end

def test_check_player
  assert_equal(true, @team.check_player("Westie"))
end

def test_add_points
  assert_equal(1, @team.add_points(1))
end

def test_win_or_loss
  assert_equal(1, @team.win_or_loss("win"))
end

end
