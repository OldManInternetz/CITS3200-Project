require 'spec_helper'
include ApplicationHelper

describe "Current Plants Admin Pages" do

	let(:user) { FactoryGirl.create(:user, admin: 1) }
	let(:plant) { FactoryGirl.create(:current_plant)}

	subject { page }

	before do

		plant.display_photo = fixture_file_upload('test_image.jpg', 'image/jpg')

		visit log_in_path
		fill_in "Username",     with: user.username
		fill_in "Password",     with: user.password		
		page.find_by_id('log-in-button').click
		visit admin_current_plants_path
	end

	describe "visiting the plant index page" do
		it { should have_title(full_title("Plants List")) }
	end

	describe "visiting a plant's page" do

		before do
			visit admin_current_plant_path(id: plant.id)
		end

		it { should have_title(full_title("(Nameless Plant)")) }


		describe "editing the plant" do

				before do
					visit admin_edit_current_plant_path(id: plant.id)
				end

				it { should have_title(full_title("Edit Plant")) }

				describe "changing some field" do


					describe "with valid information" do
						before do
							fill_in "Common name", with: "Special Plant"
							click_button "Done"
						end

						it { should have_title(full_title("(Nameless Plant)")) }
						it { should have_content("Special Plant") }
					end

					describe "with invalid information" do
						before do
							fill_in "Common name", with: "*" * 250
						click_button "Done"
						end

						it { should have_title(full_title("Edit Plant")) }
					end

				end
		
		end
		describe "deleting the plant" do

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(CurrentPlant, :count).by(-1)
			end

		end
	end

	describe "creating a new plant" do

		before do
			visit admin_new_current_plant_path
		end

		it { should have_title(full_title("New Plant")) }

		describe "changing some field" do
			describe "with valid information" do
				before do
					fill_in "Common name", with: "Special Plant"
					click_button "Done"
				end

				it { should have_title(full_title("(Nameless Plant)")) }
				it { should have_content("Special Plant") }

			end
			describe "with invalid information" do
				before do
					fill_in "Common name", with: "*" * 250
					click_button "Done"
				end

				it { should have_title(full_title("New Plant")) }
			end

		end

	end
end