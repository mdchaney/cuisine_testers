class Tester < ActiveRecord::Base
  has_many :ratings, inverse_of: :tester
  has_many :cuisines, order: 'cuisines.name', through: :ratings

  attr_accessible :name, :cuisine_ids

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
end
