class Player < ActiveRecord::Base
  belongs_to :team
  has_many :sponsorships
end
