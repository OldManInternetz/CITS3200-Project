namespace :db do
	desc "Assign a random display_photo to each plant"
	task assign_photos: :environment do
		CurrentPlant.all.each { |plant| 
			plant.display_photo = File.open(Dir.glob(File.join(Rails.root, 'lib/tasks/sample_photos', '*')).sample);
			puts "Added photo \"#{plant.display_photo_file_name}\" to plant #{plant.id}: #{plant.name}";
			plant.save! }
	end

	desc "Remove all photos from each plant"
	task remove_photos: :environment do
		CurrentPlant.all.each { |plant| 
			plant.display_photo = nil;
			puts "Removed photo from plant #{plant.id}: #{plant.name}";
			plant.save! }		
	end
end
