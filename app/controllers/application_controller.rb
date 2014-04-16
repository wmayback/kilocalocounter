class ApplicationController < ActionController::Base
  def dayfinder(day_name)
      return Day.find_by_name(day_name)
  end

  def day_arrayer(day_name)
    day_to_array = Day.find_by_name(day_name)
    day_arrayed = Array.new
    day_arrayed[0] = day_to_array.meal1
    day_arrayed[1] = day_to_array.meal2
    day_arrayed[2] = day_to_array.meal3
    day_arrayed[3] = day_to_array.meal4
    day_arrayed[4] = day_to_array.meal5
    day_arrayed[5] = day_to_array.meal6
    day_arrayed[6] = day_to_array.meal7
    day_arrayed[7] = day_to_array.meal8
    day_arrayed[8] = day_to_array.meal9
    day_arrayed[9] = day_to_array.meal10
    return day_arrayed
  end

  def day_total(day_of_the_week)
      subject_day = Day.find_by_name(day_of_the_week)
      total = subject_day.meal1 + subject_day.meal2 + subject_day.meal3 + subject_day.meal4 + subject_day.meal5 + subject_day.meal6 + subject_day.meal7 + subject_day.meal8 + subject_day.meal9 + subject_day.meal10
      return total
  end

  def fasting_total(day_of_the_week)
    if day_of_the_week == "Monday"
      return Static_data.first.fasting_fuelage.to_i
    else
      subject_day_total = day_total("Monday")
      fasting_fuelage = Static_data.first.fasting_fuelage.to_i
      previous_fasting_day_excess = fasting_fuelage - subject_day_total
      cumulative_fasting_excess = previous_fasting_day_excess + fasting_fuelage
      return cumulative_fasting_excess
    end
  end

  def leaning_total(day_of_the_week)
    if day_of_the_week == "Monday"
      return Static_data.first.lean_fuelage.to_i
    else
      subject_day_total = day_total("Monday")
      leaning_fuelage = Static_data.first.lean_fuelage.to_i
      previous_leaning_day_excess = leaning_fuelage - subject_day_total
      cumulative_leaning_excess = previous_leaning_day_excess + leaning_fuelage
      return cumulative_leaning_excess
    end
  end

    helper_method :dayfinder
    helper_method :day_arrayer
    helper_method :day_total
    helper_method :fasting_total
    helper_method :leaning_total
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery #with: :exception
end
