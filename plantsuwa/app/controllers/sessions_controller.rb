class SessionsController < ApplicationController

  before_action :already_signed_in_user, only: [:new, :create]

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

  private

    # Before filters

    def already_signed_in_user
			if signed_in?
				redirect_to root_path
			end
    end

end
