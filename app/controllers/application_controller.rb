class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  private 

  def logged_in
    redirect_to '/' unless user_is_authenticated
  end

  def user_is_authenticated
    !!current_user
  end 

  def current_user 
    User.find_by(id: session[:user_id])
  end 

end
