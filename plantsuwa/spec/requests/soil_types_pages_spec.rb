require 'spec_helper'
include ApplicationHelper

describe "Soil Types Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:soil_type) { FactoryGirl.create(:soil_type)}

	subject { page }

	describe "Visiting the soil types page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit soil_types_path

		end

		it { should have_title(full_title("Soil Types List")) }

		describe "Creating a new soil_type" do

			describe "With valid information" do

				before do
					visit new_soil_type_path
					fill_in "Name", with: "Fictitious Soil_type"
				end


				it "increments" do
					expect { click_button "Create Soil type" }.to change(SoilType, :count).by(1)
				end

				describe "puts the new soil_type on the index page" do
					before do
						click_button "Create Soil type"
					end

					it { should have_content("Fictitious Soil_type")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_soil_type_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Soil type" }.not_to change(SoilType, :count).by(1)
				end

			end
		end	#Creating a new soil_type

		describe "Viewing an existing soil type" do

			before { visit soil_type_path(id: soil_type.id) }
			it {should have_title(full_title(soil_type.name))}

		end

		describe "Editing an existing soil type" do

			describe "With valid information" do

				before do
					visit edit_soil_type_path(id: soil_type.id)
					fill_in "Name", with: "Fictitious Soil_type"
				end

				describe "puts the edited soil_type on the index page" do
					before do
						click_button "Update Soil type"
					end

					it { should have_content("Fictitious Soil_type")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_soil_type_path(id: soil_type.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Soil type"
				end

				it { should_not have_content("Fictitious Soil_type")}
				it { should have_title(full_title('Edit Soil Type')) }

			end
		end	#Editing an existing soil_type

		describe "Deleting a soil type" do

			before do
				visit soil_type_path(id: soil_type.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(SoilType, :count).by(-1)
			end

		end







	end

	describe "Visiting the soil_types page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit soil_types_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Soil_types")}

	end





end
