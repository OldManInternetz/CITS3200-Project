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

  def user_is_signed_in
    if !signed_in?
      flash[:error] = "Please sign in first!"
      redirect_to root_path
    end
  end

  def user_is_trusted
    if !is_trusted?
      flash[:error] = "Sorry, you must be a trusted user to do that."
      redirect_to root_path
    end
  end


  """ Redirects the user to the root path, or the previous page they visited, depending on params. """
  def redirect_user_to_correct_path
    if params.has_key?(:pp_path)
      redirect_to params[:pp_path]
    else
      redirect_to root_path
    end
  end

  def change_colour_scheme
    if(cookies[:style] == "white")
      cookies[:style] = "black"
    else
      cookies[:style] = "white"
    end
    redirect_to :back
  end

end
