class Metatag < ActiveRecord::Base
  strip_attributes

  has_many :thoughts, through: :metatag_joins
  has_many :metatag_joins

  validates :name, presence: true

end