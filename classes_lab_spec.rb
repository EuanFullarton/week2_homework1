require ('minitest/autorun')
require_relative ('./classes_lab')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Euan", 11)
  end

  def test_get_student_name
    assert_equal("Euan", @student.get_student_name)
  end

  def test_get_cohort_number
    assert_equal(11, @student.get_cohort_number)
  end

  def test_set_student_name
    @student.set_student_name("Percy")
    assert_equal("Percy", @student.get_student_name)
  end

  def test_set_cohort_number
    @student.set_cohort_number(14)
    assert_equal(14, @student.get_cohort_number)
  end

  def test_talking_student
    speak = @student.talking_student("hello")
    assert_equal("hello", speak)
  end

  def test_favourite_language
    lang = @student.favourite_language("Ruby")
    assert_equal("My favourite language is Ruby", lang)
  end

end

class TestTeam < MiniTest::Test
  
  def setup
  
  players = {
    "Murray Davidson" => "CM",
    "Zander Clarke" => "GK"
  }

  @team = Team.new("St.Johnstone", players, "Tommy Wright")
  end

  def test_get_team_name
    assert_equal("St.Johnstone", @team.team_name)
  end

  def test_get_number_of_players
    assert_equal(2, @team.players.length())
  end

  def test_get_coach_name
    assert_equal("Tommy Wright", @team.coach)
  end

  def test_set_coach_name
    @team.coach = ("Euan Fullarton")
    assert_equal("Euan Fullarton", @team.coach)
  end

  def test_add_player
    @team.players["Steven Anderson"] = "CB"
    assert_equal(3, @team.players.length())
  end


end
