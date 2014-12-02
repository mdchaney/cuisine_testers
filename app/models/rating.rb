class Rating < ActiveRecord::Base
  belongs_to :tester, inverse_of: :ratings
  belongs_to :cuisine, inverse_of: :ratings
end
