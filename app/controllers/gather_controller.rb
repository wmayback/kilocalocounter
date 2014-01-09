class GatherController < ApplicationController
  def form
    @weight = session[:weight]
  end
  def update
    session[:weight] = params[:weight].to_i
    redirect_to '/form'
  end  
end
