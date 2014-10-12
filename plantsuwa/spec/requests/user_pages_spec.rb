require 'spec_helper'
include ApplicationHelper

describe "User Pages" do

	let(:plant) { FactoryGirl.create(:current_plant) }
	let(:user) { FactoryGirl.create(:user) }
	let(:admin) { FactoryGirl.create(:user, username: 'admin', email: 'admin@admin.com', trusted:1, admin: 1) }

	subject { page }

	describe "Signing up a new user" do

		describe "When already signed in" do
			before do
				visit log_in_path
				fill_in "Username",     with: user.username
				fill_in "Password",     with: user.password
				page.find_by_id('log-in-button').click
				visit sign_up_path
			end

			it { should have_title(full_title("")) }
		end

		describe "From the home page" do

			describe "With valid information" do

				before do
					visit sign_up_path
					fill_in "user_username", with: "Test User"
					fill_in "user_password", with: "password"
					fill_in "user_password_confirmation", with: "password"
					fill_in "user_email", with: "email@test.com"
					page.find_by_id('submit-sign-up').click
				end

				it { should have_title(full_title(''))}
			end

			describe "With invalid information" do

				before do
					visit sign_up_path
					fill_in "user_username", with: ""
					fill_in "user_password", with: "password"
					fill_in "user_password_confirmation", with: "password"
					fill_in "user_email", with: "@test.com"
					page.find_by_id('submit-sign-up').click
				end

				it { should have_title(full_title('Sign up')) }
				it { should have_content("can't be blank") }
				it { should have_content("Please ensure your email address is valid") }


			end

		end

		describe "From a plant page" do

			before do

				visit current_plant_path(id: plant.id)
				click_link "Sign up"
				fill_in "user_username", with: "Test User2"
				fill_in "user_password", with: "password"
				fill_in "user_password_confirmation", with: "password"
				fill_in "user_email", with: "email2@test.com"
				page.find_by_id('submit-sign-up').click
			end

			it { should have_title(full_title('(Nameless Plant)'))}


		end

	end

	describe "Visiting the admin user pages" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit users_path
		end

		it { should have_title(full_title("Users List"))}

		describe "visiting the user show page" do
			before { visit user_path(id: user.id)}
			it { should have_content(user.username.titleize)}			
		end

		describe "visiting the user edit page" do
			before { visit edit_user_path(id: user.id)}
			it { should have_title(full_title("Edit User"))}
			it { should have_content(user.username.titleize)}

			describe "changing the user's username" do

				describe "to another valid username" do
					before do
						fill_in "Username", with: "Great user"
						click_button "Update User"
					end
					it { should have_content("Great User")}
				end

				describe "to an invalid username" do
					before do
						fill_in "Username", with: "A really long username that is far too long for this application"
						click_button "Update User"
					end
					it { should have_content("too long")}
					it { should have_title(full_title("Edit User"))}
				end

			end
		end


		describe "visiting the new user page" do
			before { visit new_user_path }
			it { should have_title(full_title("New User"))}

			describe "creating a new user" do

				describe "with valid information" do
					before do
						fill_in "user_username", with: "Fantastic User"
						fill_in "user_password", with: "password"
						fill_in "user_password_confirmation", with: "password"
						fill_in "user_email", with: "email@email.com"
						click_button "Create User"
					end
					it { should have_content('"fantastic user" was successfully created')}
					it { should have_title("Users List")}
				end

				describe "with invalid information" do
					before do
						fill_in "user_username", with: "Fantastic User"
						fill_in "user_password", with: "password"
						fill_in "user_password_confirmation", with: "password that doesn't match"
						fill_in "user_email", with: "email@email.com"
						click_button "Create User"
					end
					it { should have_content("doesn't match")}
					it { should have_title(full_title("New User"))}
				end

			end
		end

		describe "deleting a user" do
			before { visit user_path(id: user.id) }

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(User, :count).by(-1)
			end

		end


	end
end