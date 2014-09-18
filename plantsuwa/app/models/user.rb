class User < ActiveRecord::Base

	before_save do
	 self.email = email.downcase
	 self.username = username.downcase
	end


	before_create :create_remember_token


  validates :username,  presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false }


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true,
										format: { with: VALID_EMAIL_REGEX, message: "- Please ensure your email address is valid"	 },
										length: { maximum: 254 },
										uniqueness: { case_sensitive: false }
  has_secure_password

  validates :password, length: { minimum: 6, maximum: 20 }, on: :create
	validates :password, length: {minimum: 6, maximum: 20}, on: :update, allow_blank: true
  validates :trusted, inclusion: {:in => [true, false]}
  validates :admin, inclusion: {:in => [true, false]}

  before_save :check_admin

  has_many :notifications, dependent: :destroy  
  has_many :favourites, dependent: :destroy
  has_many :current_plants, through: :favourites, source: :favourite

  def check_admin
    self.trusted = true if self.admin?
  end


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  def favourite?(plant)
    favourites.find_by(current_plant_id: plant.id)
  end
  
  def favourite!(plant)
    favourite.create!(current_plant_id: plant.id)
  end
  
  def unfavourite!(plant)
    favourite.find_by(current_plant_id: plant.id).destroy
  end


  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end
