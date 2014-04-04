class CalorieController < ApplicationController
  def my_week

    @week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
    @meal = ['meal1','meal2','meal3','meal4','meal5','meal6','meal7','meal8','meal9','meal10']
    @static_calories_names = ['IDLE_BURN','FASTING_FUELAGE','LEAN_FUELAGE']
    @static_calories_symbols = [:IDLE_BURN,:FASTING_FUELAGE,:LEAN_FUELAGE]
    @static_calories_placeholders = ['Idle Burn Calories','Fasting Caloric Goal','Non-Fasting Goal']
    @idle_burn = Static_data.first.idle_burn.to_i
    @fasting_fuelage = Static_data.first.fasting_fuelage.to_i
    @lean_fuelage = Static_data.first.lean_fuelage.to_i
    @static_calories_instances_hash = {idle: @idle_burn, fast: @fasting_fuelage, lean: @lean_fuelage}
    @static_calories_instances = [:idle, :fast, :lean]

    def instancer(val)
      @static_calories_instances_hash[val]
    end
    def day_string(day,meal_num)
      return day+'MEAL'+meal_num
    end

    respond_to do |format|
    format.js
    format.html
    format.json
    end
  end

  def update
    @week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']

    @static = Static_data.first
    @static.idle_burn = params[:IDLE_BURN]
    @static.fasting_fuelage = params[:FASTING_FUELAGE]
    @static.lean_fuelage = params[:LEAN_FUELAGE]
    @static.save

    @day_data = Day.find_by_name(params[:weekday_name])
    @day_data.meal1 = params[:meal1].to_i
    @day_data.meal2 = params[:meal2].to_i
    @day_data.meal3 = params[:meal3].to_i
    @day_data.meal4 = params[:meal4].to_i
    @day_data.meal5 = params[:meal5].to_i
    @day_data.meal6 = params[:meal6].to_i
    @day_data.meal7 = params[:meal7].to_i
    @day_data.meal8 = params[:meal8].to_i
    @day_data.meal9 = params[:meal9].to_i
    @day_data.meal10 = params[:meal10].to_i
    @day_data.save

    def day_total(day_of_the_week)
      subject_day = Day.find_by_name(day_of_the_week)
      total = subject_day.meal1 + subject_day.meal2 + subject_day.meal3 + subject_day.meal4 + subject_day.meal5 + subject_day.meal6 + subject_day.meal7 + subject_day.meal8 + subject_day.meal9 + subject_day.meal10
      return total
    end

    @week_data = Week.first
    @week_data.monday = day_total(@week[0])
    @week_data.tuesday = day_total(@week[1])
    @week_data.wednesday = day_total(@week[2])
    @week_data.thursday = day_total(@week[3])
    @week_data.friday = day_total(@week[4])
    @week_data.saturday = day_total(@week[5])
    @week_data.sunday = day_total(@week[6])

    redirect_to my_week_url
  end
 end
