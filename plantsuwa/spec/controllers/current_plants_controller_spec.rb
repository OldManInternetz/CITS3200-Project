require 'spec_helper'

describe CurrentPlantsController do

	ENV["RAILS_ENV"] ||= 'development'

	subject { page }

	before do
		visit current_plants_path(id: 1)
	end

	it { should have_content "Description"}


end
