require 'spec_helper'
include ApplicationHelper

describe "Current Photos Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let!(:plant) { FactoryGirl.create(:current_plant, scientific_name: "Bingus mcDingus")}
	let(:photo) { FactoryGirl.create(:current_photo, current_plant_id: plant.id, description: "A photo of a bean", image: fixture_file_upload('test_image.jpg', 'image/jpg'))}
	#let(:photo) { FactoryGirl.create(:current_photo)}


	subject { page }

	describe "Visiting the current photos page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit current_photos_path

		end

		it { should have_title(full_title("Photos List")) }

		describe "Creating a new photo" do

			describe "With valid information" do

				before do
					visit new_current_photo_path
					select plant.scientific_name, from: "current_photo[current_plant_id]"
					fill_in "Description", with: "Another photo of a bean"
					attach_file('current_photo[image]', Rails.root.join('spec/fixtures/test_image.jpg'))
				end


				it "increments" do
					expect { click_button "Done" }.to change(CurrentPhoto, :count).by(1)
				end

				describe "puts the new photo on the index page" do
					before { click_button "Done" }
					it { should have_content("Another photo of a bean")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_current_photo_path
					fill_in "Description", with: "Another photo of a bean"
				end

				it "does not increment" do
					expect { click_button "Done" }.not_to change(CurrentPhoto, :count).by(1)
				end

			end
		end	#Creating a new photo

		describe "Viewing an existing photo" do

			before do
				visit current_photo_path(id: photo.id)
			end
			it {should have_title(full_title("Photo ##{photo.id}"))}

		end

		describe "Editing an existing photo" do

			describe "With valid information" do

				before do
					visit edit_current_photo_path(id: photo.id)
					fill_in "Description", with: "A new description!"
					click_button "Done"
				end

				it { should have_content("A new description!")}
			end

			describe "With invalid information" do

				before do
					visit edit_current_photo_path(id: photo.id)
					fill_in "Description", with: "*" * 305
					click_button "Done"
				end

				it { should_not have_content(photo.description)}
				it { should have_title(full_title('Edit Photo')) }

			end
		end	#Editing an existing photo

		describe "Deleting a photo" do

			before do
				visit current_photo_path(id: photo.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(CurrentPhoto, :count).by(-1)
			end

		end







	end

	describe "Visiting the photos page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit current_photos_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Photos")}

	end





end
