class MetatagSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name

  has_many :thoughts
end
