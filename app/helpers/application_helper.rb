module ApplicationHelper
  def current_user
    User.find(session[:user]) if session[:user]
  end

  def user_authenticated
    redirect_to root_path unless current_user
  end
end
