require 'spec_helper'

describe User do

	before do
		@user = User.new(username: "Example User", email: "user@example.com",
		                 password: "testpassword", password_confirmation: "testpassword")
	end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_digest) }
  it { should respond_to(:password_confirmation) }
	it { should respond_to(:remember_token) }
  it { should respond_to(:admin) }
  it { should respond_to(:favourites)}
  it { should respond_to(:current_plant_users)}
  it { should respond_to(:favourite?)}
  it { should respond_to(:favourite!)}
  
  describe "favourite" do
    let(:plant) { FactoryGirl.create(:current_plant)}
    before do
      @user.save
      @user.favourite!(:plant)
    end
    
    it { should be_favourite(:plant)}
    its(:favourites) {should include(:plant)}
    
    describe "and unfavourite" do
      before { @user.unfollow!(:plant)}
      
      it {should_not be_favourite(:plant)}
      its(:current_plant_users) {should_not include(:plant)}
    end
  end

  describe "when the username is blank" do
    before { @user.username = " " }
    it { should_not be_valid }
  end

  describe "when the email is blank" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when the username contains too many characters" do
    before { @user.username = "c" * 25 }
    it { should_not be_valid }
  end

  describe "when the email contains too many characters" do
    before { @user.email = "c" * 270 }
    it { should_not be_valid }
  end

	describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase 	# This does not allow same emails with different casing
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when username is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase # This does not allow same usernames with different casing
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when password is blank" do
    before do
      @user = User.new(username: "Example User", email: "user@example.com",
                       password: " ", password_confirmation: " ")
    end
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "not a match" }
    it { should_not be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "with a password that's too long" do
    before { @user.password = @user.password_confirmation = "a" * 25 }
    it { should be_invalid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end


  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end



end



