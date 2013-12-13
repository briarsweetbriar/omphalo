class ThoughtSerializer < ActiveModel::Serializer
  embed :ids, include: true
  
  attributes :id, :description, :created_at, :updated_at

  has_one :user
  has_many :metatags
end
