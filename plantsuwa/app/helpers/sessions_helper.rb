module SessionsHelper

  def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.hash(remember_token))
    self.current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def is_trusted?
		if signed_in?
    	current_user.admin == 1
		else
			false
		end
  end

  def is_admin?
		if signed_in?
    	current_user.admin == 2       # I guess '2' is admin for now. '1' is trusted user
		else
			false
		end
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = User.hash(cookies[:remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def sign_out
    current_user.update_attribute(:remember_token,
                                  User.hash(User.new_remember_token))
    cookies.delete(:remember_token)
    self.current_user = nil
  end
end
