require 'spec_helper'
include ApplicationHelper

describe "Types Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:type) { FactoryGirl.create(:type)}

	subject { page }

	describe "Visiting the types page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit types_path

		end

		it { should have_title(full_title("Types List")) }

		describe "Creating a new type" do

			describe "With valid information" do

				before do
					visit new_type_path
					fill_in "Name", with: "Fictitious Type"
				end


				it "increments" do
					expect { click_button "Create Type" }.to change(Type, :count).by(1)
				end

				describe "puts the new type on the index page" do
					before do
						click_button "Create Type"
					end

					it { should have_content("Fictitious Type")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_type_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Type" }.not_to change(Type, :count).by(1)
				end

			end
		end	#Creating a new type

		describe "Viewing an existing type" do

			before { visit type_path(id: type.id) }
			it {should have_title(full_title(type.name))}

		end

		describe "Editing an existing type" do

			describe "With valid information" do

				before do
					visit edit_type_path(id: type.id)
					fill_in "Name", with: "Fictitious Type"
				end

				describe "puts the edited type on the index page" do
					before do
						click_button "Update Type"
					end

					it { should have_content("Fictitious Type")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_type_path(id: type.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Type"
				end

				it { should_not have_content("Fictitious Type")}
				it { should have_title(full_title('Edit Type')) }

			end
		end	#Editing an existing type

		describe "Deleting a type" do

			before do
				visit type_path(id: type.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(Type, :count).by(-1)
			end

		end







	end

	describe "Visiting the types page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit types_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Types")}

	end





end
