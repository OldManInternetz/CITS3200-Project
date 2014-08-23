class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
			#session[:id] = @user.id
      sign_in user
			redirect_to root_path
    else
      flash.now[:error] = 'You\'ve entered an invalid username/password combination. Please try again.'
      render 'new'

    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
