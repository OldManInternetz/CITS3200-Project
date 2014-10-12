require 'spec_helper'

describe FavouritesController do

	let(:user) { FactoryGirl.create(:user, username: "testman", password: "password", password_confirmation: "password", email: "test@test.com") }
	let(:plant) { FactoryGirl.create(:current_plant, common_name: "great plant")}

	subject { page }

	before do
		visit log_in_path
		fill_in "Username",     with: user.username
		fill_in "Password",     with: user.password
		page.find_by_id('log-in-button').click
		visit current_plant_path(id: plant.id)
	end

	describe "adding a favourite" do
		it "increments" do
			expect {	page.find_by_id('favourite-button').click	to change(Favourite, :count).by(1) }
		end
	end

	describe "adding and removing a favourite" do

		before do
			page.find_by_id('favourite-button').click
			visit current_plant_path(id: plant.id)
			page.find_by_id('unfavourite-button').click
		end

		it "decrements" do
			expect {	page.find_by_id('unfavourite-button').click	to change(Favourite, :count).by(-1) }
		end

	end


	describe "attempting to add/remove favourites when not logged in" do

		before do
			page.find_by_id('log-out-button').click
		end

		describe "adding a favourite" do
			it "increments" do
				expect {	page.find_by_id('favourite-button').click	not_to change(Favourite, :count).by(1) }
			end
		end

		describe "removing a favourite" do
			it "decrements" do
				expect {	page.find_by_id('unfavourite-button').click	not_to change(Favourite, :count).by(-1) }
			end		
		end

  end

end
