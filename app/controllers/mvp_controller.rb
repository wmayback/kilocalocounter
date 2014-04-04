class MvpController < ApplicationController
  def index
    respond_to do |format|
    format.js
    format.html
    format.json
  end
  end

  def update

   day = Day.find_by_name('test')
   day.meal1 = params[:meal1].to_i
   day.meal2 = params[:meal2].to_i
   day.meal3 = params[:meal3].to_i
   day.meal4 = params[:meal4].to_i
   day.meal5 = params[:meal5].to_i
   day.meal6 = params[:meal6].to_i
   day.meal7 = params[:meal7].to_i
   day.meal8 = params[:meal8].to_i
   day.meal9 = params[:meal9].to_i
   day.meal10 = params[:meal10].to_i



    respond_to do |format|
    day.save
    format.js {redirect_to index_url}
    format.html {redirect_to index_url}
    format.json {redirect_to index_url}
    end

  end
end
