class ApplicationController < ActionController::Base
  def dayfinder(day_name)
      return Day.find_by_name(day_name)
    end
 
    def day_total(day_of_the_week)
      subject_day = Day.find_by_name(day_of_the_week)
      total = subject_day.meal1 + subject_day.meal2 + subject_day.meal3 + subject_day.meal4 + subject_day.meal5 + subject_day.meal6 + subject_day.meal7 + subject_day.meal8 + subject_day.meal9 + subject_day.meal10
      return total
    end
    
    helper_method :dayfinder
    helper_method :day_total
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery #with: :exception
end
