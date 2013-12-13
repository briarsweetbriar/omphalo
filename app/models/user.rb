class User < ActiveRecord::Base
         
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :thoughts

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates_presence_of :slug


  before_save :assign_default_name, :ensure_authentication_token!

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end
 
  def ensure_authentication_token!
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

private

  def assign_default_name
    self.name = generate_default_name if name.blank?
  end

  def generate_default_name
    name = "user_" + default_name_string
    generate_default_name if User.where(name: name).exists?
  end

  def default_name_string
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    (0...8).map{ o[rand(o.length)] }.join
  end
  
  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end
end