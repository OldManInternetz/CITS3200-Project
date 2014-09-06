class AdminPagesController < ApplicationController

	before_filter :user_is_admin
  layout 'admin_layout'

  def index
  end
end
