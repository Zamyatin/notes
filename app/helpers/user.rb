helpers do

  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_name(id)
    User.find(id).name
  end

end
