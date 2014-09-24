class MergedMigration < ActiveRecord::Migration
  def change

    """ Create current_plants table """
    create_table :current_plants do |t|
      t.timestamps
    end

    """ Add fields to current_plants table """
    add_column :current_plants, :genus,				      :string
	  add_column :current_plants, :species,           :string
    add_column :current_plants, :subspecies,        :string
    add_column :current_plants, :family,            :string
    add_column :current_plants, :common_name,       :string
    add_column :current_plants, :scientific_name,   :string   # REMOVE THIS LATER
    add_column :current_plants, :synonym,           :string
    add_column :current_plants, :description,       :string
    add_column :current_plants, :location_name,     :string
    add_column :current_plants, :characteristics,   :string
    add_column :current_plants, :additional_info,   :string
    add_column :current_plants, :identification,    :string
    add_column :current_plants, :physical,          :string
    add_column :current_plants, :general_info,      :string
    add_column :current_plants, :environment,       :string
    add_column :current_plants, :horticulture,      :string
    add_column :current_plants, :architectural_uses,:string
    add_column :current_plants, :culture,           :string
    add_column :current_plants, :conservation,      :string
    add_column :current_plants, :wildlife,          :string
    add_column :current_plants, :architectural_info,:string
    add_column :current_plants, :discovered_by,     :string
    add_column :current_plants, :named_by,          :string
    add_column :current_plants, :version,           :integer, default: 1;
 	  add_column :current_plants, :plant_id,          :integer
	  add_column :current_plants, :submitted_by,      :integer
    add_column :current_plants, :edited_by,         :integer
    add_attachment :current_plants, :display_photo
    add_column :current_plants, :display_photo_description, :string
    add_column :current_plants, :type_id,           :integer
    add_column :current_plants, :name,              :string
    """ Still need to add the following fields: """
    # my_notes (id)
    # location_coordinates (int)

    """ Create sizes table """
    create_table :sizes do |t|
      t.string :name
      t.timestamps
    end

    """ Create soil_types table """
    create_table :soil_types do |t|
      t.string :name
      t.timestamps
    end

    """ Create leaf_colours table """
    create_table :leaf_colours do |t|
      t.string :name
      t.string :alt_colour
      t.timestamps
    end

 	""" Create flower_colours table """
    create_table :flower_colours do |t|
      t.string :name
      t.string :alt_colour
      t.timestamps
    end

 	""" Create current_photos table """
    create_table :current_photos do |t|
      t.integer :current_plant_id
      t.string :description
      t.timestamps
    end

    """ Create families table """
    """ CHANGED TO A TEXT FIELD
    create_table :families do |t|
      t.string :name
      t.timestamps
    end
    """

    """ Create genera table """
    """ CHANGED TO A TEXT FIELD
    create_table :genera do |t|
      t.string :name
      t.timestamps
    end
    """

    """ Create origins table """
    create_table :origins do |t|
      t.string :name
      t.timestamps
    end

    """ Create types table """
    create_table :types do |t|
      t.string :name
      t.timestamps
    end

    """  Create climates table """
    create_table :climates do |t|
      t.string :name
      t.timestamps
    end

    """ Create current_linking_climates table """
    create_table :current_linking_climates do |t|
      t.integer :current_plant_id
      t.integer :climate_id
      t.timestamps
    end

    """ Create current_linking_flower_families table """
    """ CHANGED TO A TEXT FIELD
    create_table :current_linking_families do |t|
      t.integer :current_plant_id
      t.integer :family_id
      t.timestamps
    end    
    """

    """ Create current_linking_flower_genera table """
    """ CHANGED TO A TEXT FIELD
    create_table :current_linking_genera do |t|
      t.integer :current_plant_id
      t.integer :genus_id
      t.timestamps
    end
    """

    """ Create current_linking_flower_colours table """
    create_table :current_linking_flower_colours do |t|
      t.integer :current_plant_id
      t.integer :flower_colour_id
      t.timestamps
    end

    """ Create current_linking_leaf_colours table """
    create_table :current_linking_leaf_colours do |t|
      t.integer :current_plant_id
      t.integer :leaf_colour_id
      t.timestamps
    end

    """ Create current_linking_origins table """
    create_table :current_linking_origins do |t|
      t.integer :current_plant_id
      t.integer :origin_id
      t.timestamps
    end

    """ Create current_linking_sizes table """
    create_table :current_linking_sizes do |t|
      t.integer :current_plant_id
      t.integer :size_id
      t.timestamps
    end

	""" Create current_linking_types table """
  """ NOT USED ANYMORE - SHOULD BE ONE-MANY
    create_table :current_linking_types do |t|
      t.integer :current_plant_id
      t.integer :type_id
      t.timestamps
    end
  """

	""" Create current_linking_soil_types table """
    create_table :current_linking_soil_types do |t|
      t.integer :current_plant_id
      t.integer :soil_type_id
      t.timestamps
    end

    """ Add attachment to current_photos """
	  add_attachment :current_photos, :image

  	""" Create users table """
  	create_table :users do |t|
      t.string :username
      t.string :email
      t.timestamps
    end

	""" Add some more user fields """
    add_column :users, :password_digest, :string
    add_column :users, :remember_token, :string
    add_column :users, :trusted, :boolean, default: 0;
    add_column :users, :admin, :boolean, default: 0;

    """ Add indexes to user fields """
    add_index  :users, :username, unique: true
    #add_index  :users, :email, unique: true
    add_index  :users, :remember_token
  end
end
