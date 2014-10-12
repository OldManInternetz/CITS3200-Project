require 'spec_helper'
include ApplicationHelper

describe "Leaf Colours Pages" do

	let(:admin) { FactoryGirl.create(:user, username: 'trustme', password: 'password', password_confirmation: 'password', email: 'trustme@really.com', trusted: 1, admin: 1) }
	let(:non_admin) { FactoryGirl.create(:user)}
	let(:leaf_colour) { FactoryGirl.create(:leaf_colour)}

	subject { page }

	describe "Visiting the leaf colours page as an admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: admin.username
			fill_in "Password",     with: admin.password
			page.find_by_id('log-in-button').click
			visit admin_path
			visit leaf_colours_path

		end

		it { should have_title(full_title("Leaf Colours List")) }

		describe "Creating a new leaf_colour" do

			describe "With valid information" do

				before do
					visit new_leaf_colour_path
					fill_in "Name", with: "Fictitious Leaf_colour"
				end


				it "increments" do
					expect { click_button "Create Leaf colour" }.to change(LeafColour, :count).by(1)
				end

				describe "puts the new leaf_colour on the index page" do
					before do
						click_button "Create Leaf colour"
					end

					it { should have_content("Fictitious Leaf_colour")}
				end
			end

			describe "With invalid information" do

				before do
					visit new_leaf_colour_path
					fill_in "Name", with: ""
				end

				it "does not increment" do
					expect { click_button "Create Leaf colour" }.not_to change(LeafColour, :count).by(1)
				end

			end
		end	#Creating a new leaf_colour

		describe "Viewing an existing leaf colour" do

			before { visit leaf_colour_path(id: leaf_colour.id) }
			it {should have_title(full_title(leaf_colour.name))}

		end

		describe "Editing an existing leaf colour" do

			describe "With valid information" do

				before do
					visit edit_leaf_colour_path(id: leaf_colour.id)
					fill_in "Name", with: "Fictitious Leaf_colour"
				end

				describe "puts the edited leaf_colour on the index page" do
					before do
						click_button "Update Leaf colour"
					end

					it { should have_content("Fictitious Leaf_colour")}
				end
			end

			describe "With invalid information" do

				before do
					visit edit_leaf_colour_path(id: leaf_colour.id)
					fill_in "Name", with: "*" * 105
					click_button "Update Leaf colour"
				end

				it { should_not have_content("Fictitious Leaf_colour")}
				it { should have_title(full_title('Edit Leaf Colour')) }

			end
		end	#Editing an existing leaf_colour

		describe "Deleting a leaf colour" do

			before do
				visit leaf_colour_path(id: leaf_colour.id)
			end

			it "decrements" do
				expect { page.find_by_id('delete-button').click }.to change(LeafColour, :count).by(-1)
			end

		end







	end

	describe "Visiting the leaf_colours page as a non-admin" do

		before do
			visit log_in_path
			fill_in "Username",     with: non_admin.username
			fill_in "Password",     with: non_admin.password
			page.find_by_id('log-in-button').click
			visit leaf_colours_path
		end


		it { should have_content("Sorry")}		
		it { should_not have_title("Plants UWA - Leaf_colours")}

	end





end
