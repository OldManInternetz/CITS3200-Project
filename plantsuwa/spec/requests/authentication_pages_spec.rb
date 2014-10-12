require 'spec_helper'
include ApplicationHelper

describe "Authentication" do

  subject { page }


		describe "login page" do

    before { visit log_in_path }
    it { should have_title(full_title('Log in')) }
    it { should have_content('Log in') }

	  describe "with invalid information" do
	    before { page.find_by_id('log-in-button').click }

	    it { should have_title('Log in') }
	    it { should have_content('You\'ve entered an invalid username/password combination. Please try again.') }


		end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Username",    with: user.username
        fill_in "Password",    with: user.password
        page.find_by_id('log-in-button').click
      end

      it { should have_title(full_title('')) }
      it { should have_content(user.username.titleize) }

      describe "attempting to sign in when already signed in" do
        before { visit log_in_path }
        it { should have_title(full_title(''))}
      end

      describe "followed by Logout" do
        before { page.find_by_id('log-out-button').click }
        it { should have_title(full_title('')) }
        it { should have_content('Log in') }
      end
    end



  end
end
