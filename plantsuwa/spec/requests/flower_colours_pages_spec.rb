require 'spec_helper'
include ApplicationHelper

describe "Flower Colours Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:flower_colour) { FactoryGirl.create(:flower_colour)}

	subject { page }

	describe "Visiting the flower colours page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit flower_colours_path

		end

		it { should have_title(full_title("Flower Colours List")) }

		describe "Creating a new flower_colour" do

			describe "With valid information" do

				before do
					visit new_flower_colour_path
					fill_in "Name", with: "Fictitious Flower_colour"
				end


				it "increments" do
					expect { click_button "Create Flower colour" }.to change(FlowerColour, :count).by(1)
				end

				describe "puts the new flower_colour on the index page" do
					before do
						click_button "Create Flower colour"
					end

					it { should have_content("Fictitious Flower_colour")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_flower_colour_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Flower colour" }.not_to change(FlowerColour, :count).by(1)
				end

			end
		end	#Creating a new flower_colour

		describe "Viewing an existing flower colour" do

			before { visit flower_colour_path(id: flower_colour.id) }
			it {should have_title(full_title(flower_colour.name))}

		end

		describe "Editing an existing flower colour" do

			describe "With valid information" do

				before do
					visit edit_flower_colour_path(id: flower_colour.id)
					fill_in "Name", with: "Fictitious Flower_colour"
				end

				describe "puts the edited flower_colour on the index page" do
					before do
						click_button "Update Flower colour"
					end

					it { should have_content("Fictitious Flower_colour")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_flower_colour_path(id: flower_colour.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Flower colour"
				end

				it { should_not have_content("Fictitious Flower_colour")}
				it { should have_title(full_title('Edit Flower Colour')) }

			end
		end	#Editing an existing flower_colour

		describe "Deleting a flower colour" do

			before do
				visit flower_colour_path(id: flower_colour.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(FlowerColour, :count).by(-1)
			end

		end







	end

	describe "Visiting the flower_colours page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit flower_colours_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Flower_colours")}

	end





end
