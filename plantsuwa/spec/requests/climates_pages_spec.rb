require 'spec_helper'
include ApplicationHelper

describe "Climates Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:climate) { FactoryGirl.create(:climate)}

	subject { page }

	describe "Visiting the climates page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit climates_path

		end

		it { should have_title(full_title("Climates List")) }

		describe "Creating a new climate" do

			describe "With valid information" do

				before do
					visit new_climate_path
					fill_in "Name", with: "Fictitious Climate"
				end


				it "increments" do
					expect { click_button "Create Climate" }.to change(Climate, :count).by(1)
				end

				describe "puts the new climate on the index page" do
					before do
						click_button "Create Climate"
					end

					it { should have_content("Fictitious Climate")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_climate_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Climate" }.not_to change(Climate, :count).by(1)
				end

			end
		end	#Creating a new climate

		describe "Viewing an existing climate" do

			before { visit climate_path(id: climate.id) }
			it {should have_title(full_title(climate.name))}

		end

		describe "Editing an existing climate" do

			describe "With valid information" do

				before do
					visit edit_climate_path(id: climate.id)
					fill_in "Name", with: "Fictitious Climate"
				end

				describe "puts the edited climate on the index page" do
					before do
						click_button "Update Climate"
					end

					it { should have_content("Fictitious Climate")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_climate_path(id: climate.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Climate"
				end

				it { should_not have_content("Fictitious Climate")}
				it { should have_title(full_title('Edit Climate')) }

			end
		end	#Editing an existing climate

		describe "Deleting a climate" do

			before do
				visit climate_path(id: climate.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(Climate, :count).by(-1)
			end

		end







	end

	describe "Visiting the climates page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit climates_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Climates")}

	end





end
