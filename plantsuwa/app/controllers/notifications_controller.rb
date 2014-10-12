class NotificationsController < ApplicationController
  
  before_filter :user_is_admin
  layout 'admin_layout'


  def index
    @notifications = Notification.paginate(page: params[:page], per_page: 10)
  end

  def show
    @notification = Notification.find(params[:id])
  end
  
  '''
  def destroy
    @notification = Notification.find(params[:id])
    flash[:success] = "Notification \##{@notification.id} was successfully destroyed." 
    @notification.destroy
 
    redirect_to notifications_path
  end

  private
    def notification_params
      params.require(:notification).permit(:name)
    end
  '''
end
