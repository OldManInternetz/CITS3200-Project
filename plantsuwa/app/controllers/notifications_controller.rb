class NotificationsController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @notifications = Notification.paginate(page: params[:page], per_page: 15)
  end
  
  def edit
    @notification = Notification.find(params[:id])
  end
  
  def update
    @notification = Notification.find(params[:id])
 
    if @notification.update(notification_params)
      redirect_to notifications_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
 
    redirect_to notifications_path
  end
  
  private
    def notification_params
      params.require(:notification).permit(:name)
    end
end
