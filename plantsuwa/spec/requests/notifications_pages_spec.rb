require 'spec_helper'
include ApplicationHelper

describe "Notifications Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:plant) { FactoryGirl.create(:current_plant)}
	let(:notification) { Notification.create(user_id: admin.id, current_plant_id: plant.id, action: 'created')}

	subject { page }

	describe "Visiting the notifications page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit notifications_path

		end

		it { should have_title(full_title("Notifications List")) }

		describe "Viewing an existing notification" do

			before { visit notification_path(id: notification.id) }
			it {should have_title(full_title("Notification ##{notification.id}"))}

		end

	end

	describe "Visiting the notifications page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit notifications_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Notifications")}

	end

end
