require 'spec_helper'
include ApplicationHelper

describe "Current Plants Pages" do

	let(:user) { FactoryGirl.create(:user) }
	let(:plant) { FactoryGirl.create(:current_plant)}

	subject { page }

	before do

		plant.display_photo = fixture_file_upload('test_image.jpg', 'image/jpg')

		visit log_in_path
		fill_in "Username",     with: user.username
		fill_in "Password",     with: user.password		
		page.find_by_id('log-in-button').click
		visit current_plants_path
	end

	describe "visiting the plant index page" do
		it { should have_title(full_title("List by Genus")) }
	end

	describe "visiting a plant's page" do

		before do
			plant.update(display_photo: fixture_file_upload('test_image.jpg', 'image/jpg'))
			plant.save!
			visit current_plant_path(id: plant.id)
		end

		it { should have_title(full_title("(Nameless Plant)")) }


		describe "editing the plant" do

			describe "as a trusted user" do

				before do
					trusted_user = FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: true)

					page.find_by_id('log-out-button').click

					visit log_in_path
					fill_in "Username",     with: trusted_user.username
					fill_in "Password",     with: trusted_user.password		
					page.find_by_id('log-in-button').click
					visit edit_current_plant_path(id: plant.id)
				end

				it { should have_title(full_title("Edit Plant")) }

				describe "changing some field" do
					describe "with valid information" do
						before do
							fill_in "Common name", with: "Special Plant"
							page.find_by_id('submit-button-hidden').click
						end

						it { should have_title(full_title("(Nameless Plant)")) }
						it { should have_content("Special Plant") }
					end
					describe "with invalid information" do
						before do
							fill_in "Common name", with: "*" * 250
							page.find_by_id('submit-button-hidden').click
						end

						it { should have_title(full_title("Edit Plant")) }
					end
				end

			end

			describe "as a non-trusted user" do

				before do
					visit edit_current_plant_path(id: plant.id)
				end

				it { should_not have_title(full_title("Edit Plant")) }

			end

		end

	end

	describe "creating a new plant" do

		describe "as a trusted user" do

			before do
				trusted_user = FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: true)

				page.find_by_id('log-out-button').click

				visit log_in_path
				fill_in "Username",     with: trusted_user.username
				fill_in "Password",     with: trusted_user.password		
				page.find_by_id('log-in-button').click
				visit new_current_plant_path
			end

			it { should have_title(full_title("New Plant")) }

			describe "changing some field" do

				describe "with valid information" do

					before do
						fill_in "Common name", with: "Special Plant"
						page.find_by_id('submit-button-hidden').click
					end

					it { should have_title(full_title("(Nameless Plant)")) }
					it { should have_content("Special Plant") }

				end

				describe "with invalid information" do
					before do
						fill_in "Common name", with: "*" * 250
						page.find_by_id('submit-button-hidden').click
					end

					it { should have_title(full_title("New Plant")) }
				end

			end

		end

		describe "as a non-trusted user" do

			before do
				visit new_current_plant_path
			end

			it { should_not have_title(full_title("New Plant")) }

		end		

	end


	describe "searching" do

		before { visit search_current_plants_path }

		it { should have_title(full_title("Search"))}

		describe "using the keyword search" do

			before do
				fill_in "search_all", with: "Rose"
				page.find_by_id("submit_search").click
			end

			it { should have_content("Rose")}

		end

		describe "using the parameter search" do

			before do
				page.find_by_id("submit-param-search").click
			end

			it { should have_content("0 plants found.")}

			describe "and going back to the search" do

				before { page.find_by_id('back-button').click }

				it { should have_content("Parameter Search")}
				it { should have_content("Keyword Search")}

			end

		end
	end


end