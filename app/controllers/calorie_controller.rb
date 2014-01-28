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
    
  end
  
  def update
    @static = Static_data.first
    @static.idle_burn = params[:IDLE_BURN]
    @static.fasting_fuelage = params[:FASTING_FUELAGE]
    @static.lean_fuelage = params[:LEAN_FUELAGE]
    @static.save
    
    @day_data = Day.find_by_name(:weekday_name)
    @day_data.meal1 = params[:meal1]
    @day_data.meal2 = params[:meal2]
    @day_data.meal3 = params[:meal3]
    @day_data.meal4 = params[:meal4]
    @day_data.meal5 = params[:meal5]
    @day_data.meal6 = params[:meal6]
    @day_data.meal7 = params[:meal7]
    @day_data.meal8 = params[:meal8]
    @day_data.meal9 = params[:meal9]
    @day_data.meal10 = params[:meal10]
  
    @week_data = Week.first
    
    redirect_to my_week_url
  end  
 end