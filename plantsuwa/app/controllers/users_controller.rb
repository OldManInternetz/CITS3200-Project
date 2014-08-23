class UsersController < ApplicationController

	
  # This line will cause only signed in users to be able to edit their information. Right now,
  # there is no edit page, and there may not even be one. We'll have to think about this later
  before_action :signed_in_user, except: [:new, :create]

  """  
  def edit
    @user = User.find(current_user)
  end
  """

  """
  def update
    @user = User.find(current_user)
   	if @user.update_attributes(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  """

  def new
		if signed_in?
			redirect_to root_path
		else
    	@user = User.new
		end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:successful_signup] = "Thanks for signing up!"
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end



    # Before filters

    def signed_in_user
			if !signed_in?
				flash[:error] = "Please log in to access this page."
				redirect_to log_in_path
			end
    end

end


