class Student 

  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort_number = cohort_number
  end

  def get_student_name
    return @student_name
  end

  def get_cohort_number
    return @cohort_number
  end

  def set_student_name(new_name)
      @student_name = new_name
  end

  def set_cohort_number(new_cohort)
    @cohort_number = new_cohort
   end

  def talking_student(speak)
    return speak
  end

  def favourite_language(lang)
    return "My favourite language is " + lang
  end

end


class Team
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_number_of_players
  #   return @players
  # end

  # def get_coach_name
  #   return @coach
  # end

  # def set_coach_name(new_coach)
  #   @coach = new_coach
  # end

end