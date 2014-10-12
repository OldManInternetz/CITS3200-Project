class UsersController < ApplicationController

  before_filter :user_is_admin, except: [:new, :create]
  layout 'admin_layout', except: [:new, :create]

  # This line will cause only signed in users to be able to edit their information. Right now,
  # there is no edit page, and there may not even be one. We'll have to think about this later
  #before_action :signed_in_user, except: [:new, :create]



  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
    @notifications = Notification.where('user_id = ?', @user.id)
    @favourites = CurrentPlant.where(id: (@user.favourites).select('current_plant_id'))

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
 
    if @user.update(user_params_admin)
      flash[:success] = "\"#{@user.username}\" was successfully updated." 
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end



  """ These can be viewed by anyone, not just admins """

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
      redirect_user_to_correct_path
    else
      render 'new'
    end
  end

  """ """

  def new_admin
    @user = User.new
  end

  def create_admin
    @user = User.new(user_params_admin)
    if @user.save
      flash[:success] = "\"#{@user.username}\" was successfully created." 
      redirect_to users_path
    else
      render 'new_admin'
    end
  end


  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :email)
    end

    def user_params_admin
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :trusted, :admin)
    end



    # Before filters

    #def signed_in_user
		#	if !signed_in?
		#		flash[:error] = "Please log in to access this page."
		#		redirect_to log_in_path
		#	end
    #end

end


