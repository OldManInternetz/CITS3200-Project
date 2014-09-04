class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


  def user_is_admin
		if !is_admin?
			flash[:error] = "Sorry, only administrators may access the administration pages!"
				redirect_to root_path
		end
  end

  def this_is_an_admin_page
		#user_is_admin				# Check if the user is an admin
  	@admin_page = true	# Make sure Rails knows that the page is an admin page
  end

end
