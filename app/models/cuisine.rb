class Cuisine < ActiveRecord::Base
  has_many :ratings, inverse_of: :cuisine
  has_many :testers, order: 'testers.name', through: :ratings

  attr_accessible :name, :tester_ids

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
end
