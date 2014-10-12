require 'spec_helper'

describe "Favourites Pages" do

	let(:user) { FactoryGirl.create(:user) }
	let(:plant) { FactoryGirl.create(:current_plant)}

	subject { page }

	before do
		visit log_in_path
		fill_in "Username",     with: user.username
		fill_in "Password",     with: user.password
		page.find_by_id('log-in-button').click
		visit current_plant_path(id: plant.id)
	end


	describe "visiting the favourites page" do

		before do
			page.find_by_id('favourites-button').click			
		end

		it { should have_content('Favourites') }

		describe "unfavouriting a plant from the page" do
			it "decrements" do
				expect {	page.find_by_id('unfavourite-button').click	to change(Favourite, :count).by(-1) }
			end
		end

		describe "when not signed in" do

			before do 
				page.find_by_id('log-out-button').click
				visit favourites_path
			end

			it { should have_content("Please sign in first!")}

		end
	end

	'''describe "manually adding a favourite via the rails console" do

		before do
			user.favourite!(plant)		
		end

		user.current_plants should_include(plant)


	end'''
end
