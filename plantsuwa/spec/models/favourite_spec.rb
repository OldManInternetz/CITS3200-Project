require 'spec_helper'

describe Favourite do
  let(:current_plant) {FactoryGirl.create(:current_plant)}
  let(:user) {FactoryGirl.create(:user)}
  let(:favourite) {user.favourites.build(current_plant_id: current_plant.id)}
  
  subject { favourite }
  
  it { should be_valid }
  
  describe "favourite methods" do
    it { should respond_to(:user)}
    it { should respond_to(:current_plant)}
    its(:user) {should eq user}
    its(:current_plant) {should eq current_plant}
  end
  
  describe "when current_plant id is not present" do
    before { relationship.current_plant_id = nil }
    it { should_not be_valid }
  end
  
  describe "when user id is not present" do
    before { relationship.user_id = nil }
    it { should_not be_valid }
  end
end
