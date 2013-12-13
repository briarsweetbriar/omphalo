class Thought < ActiveRecord::Base
  strip_attributes

  belongs_to :user
  has_many :metatags, through: :metatag_joins
  has_many :metatag_joins

  validates :description, presence: true

  before_update :destroy_metatags
  before_save :assign_metatags
  after_save :join_metatags

private

  def destroy_metatags
    metatag_joins.each {|join| join.destroy}
  end

  def assign_metatags
    params = description.split "#"
    self.description = params.delete_at 0
    @metatag_container = []
    params.each do |name|
      metatag = Metatag.where(name: name).first_or_create!
      @metatag_container << metatag unless @metatag_container.include?(metatag)
    end
  end

  def join_metatags
    @metatag_container.each do |metatag|
      self.metatags << metatag
    end
  end

end