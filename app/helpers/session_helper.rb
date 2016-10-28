module SessionHelper
  def login(username)
    u = User.find_by(username: username)
    session[:user_id] = u.id
  end

  def is_logged_in?
    current_user != nil
  end

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def logout
    session[:user_id] = nil
  end
end
