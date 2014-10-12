require 'spec_helper'
include ApplicationHelper

describe "Origins Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:origin) { FactoryGirl.create(:origin)}

	subject { page }

	describe "Visiting the origins page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit origins_path

		end

		it { should have_title(full_title("Origins List")) }

		describe "Creating a new origin" do

			describe "With valid information" do

				before do
					visit new_origin_path
					fill_in "Name", with: "Fictitious Origin"
				end


				it "increments" do
					expect { click_button "Create Origin" }.to change(Origin, :count).by(1)
				end

				describe "puts the new origin on the index page" do
					before do
						click_button "Create Origin"
					end

					it { should have_content("Fictitious Origin")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_origin_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Origin" }.not_to change(Origin, :count).by(1)
				end

			end
		end	#Creating a new origin

		describe "Viewing an existing origin" do

			before { visit origin_path(id: origin.id) }
			it {should have_title(full_title(origin.name))}

		end

		describe "Editing an existing origin" do

			describe "With valid information" do

				before do
					visit edit_origin_path(id: origin.id)
					fill_in "Name", with: "Fictitious Origin"
				end

				describe "puts the edited origin on the index page" do
					before do
						click_button "Update Origin"
					end

					it { should have_content("Fictitious Origin")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_origin_path(id: origin.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Origin"
				end

				it { should_not have_content("Fictitious Origin")}
				it { should have_title(full_title('Edit Origin')) }

			end
		end	#Editing an existing origin

		describe "Deleting a origin" do

			before do
				visit origin_path(id: origin.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(Origin, :count).by(-1)
			end

		end







	end

	describe "Visiting the origins page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit origins_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Origins")}

	end





end
