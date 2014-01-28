class ApplicationController < ActionController::Base
      def dayfinder(day_name)
      return Day.find_by_name(day_name)
    end
    
    helper_method :dayfinder
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery #with: :exception
end
