require 'spec_helper'
include ApplicationHelper

describe "Sizes Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:size) { FactoryGirl.create(:size)}

	subject { page }

	describe "Visiting the sizes page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit sizes_path

		end

		it { should have_title(full_title("Sizes List")) }

		describe "Creating a new size" do

			describe "With valid information" do

				before do
					visit new_size_path
					fill_in "Name", with: "Fictitious Size"
				end


				it "increments" do
					expect { click_button "Create Size" }.to change(Size, :count).by(1)
				end

				describe "puts the new size on the index page" do
					before do
						click_button "Create Size"
					end

					it { should have_content("Fictitious Size")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_size_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Size" }.not_to change(Size, :count).by(1)
				end

			end
		end	#Creating a new size

		describe "Viewing an existing size" do

			before { visit size_path(id: size.id) }
			it {should have_title(full_title(size.name))}

		end

		describe "Editing an existing size" do

			describe "With valid information" do

				before do
					visit edit_size_path(id: size.id)
					fill_in "Name", with: "Fictitious Size"
				end

				describe "puts the edited size on the index page" do
					before do
						click_button "Update Size"
					end

					it { should have_content("Fictitious Size")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_size_path(id: size.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Size"
				end

				it { should_not have_content("Fictitious Size")}
				it { should have_title(full_title('Edit Size')) }

			end
		end	#Editing an existing size

		describe "Deleting a size" do

			before do
				visit size_path(id: size.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(Size, :count).by(-1)
			end

		end







	end

	describe "Visiting the sizes page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit sizes_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Sizes")}

	end





end
