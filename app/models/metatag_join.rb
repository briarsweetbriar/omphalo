class MetatagJoin < ActiveRecord::Base
  strip_attributes

  belongs_to :thought
  belongs_to :metatag

end