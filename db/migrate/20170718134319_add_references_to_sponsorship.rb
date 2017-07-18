class AddReferencesToSponsorship < ActiveRecord::Migration
  def change
    add_reference :sponsorships, :players, index: true, foreign_key: true
    add_reference :sponsorships, :sponsors, index: true, foreign_key: true
  end
end
