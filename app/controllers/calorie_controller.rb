class CalorieController < ApplicationController
  def my_week
    
    @week = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday']
    @static_calories_names = ['IDLE_BURN','FASTING_FUELAGE','LEAN_FUELAGE']
    @static_calories_placeholders = ['Idle Burn Calories','Fasting Caloric Goal','Non-Fasting Goal']
    @idle_burn = Static_data.first.idle_burn.to_i
    @fasting_fuelage = Static_data.first.fasting_fuelage.to_i
    @lean_fuelage = Static_data.first.lean_fuelage.to_i
    
    def day_string(day,meal_num)
      return day+'MEAL'+meal_num
    end
    
  end
  
  def update
    @static = Static_data.first
    @static.idle_burn = params[:IDLE_BURN]
    @static.fasting_fuelage = params[:FASTING_FUELAGE]
    @static.lean_fuelage = session[:LEAN_FUELAGE] = params[:LEAN_FUELAGE]
    @static.save
    
    redirect_to my_week_url
  end  
 end