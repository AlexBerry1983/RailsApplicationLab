class AddSingularReferencesToSponsorship < ActiveRecord::Migration
  def change
    add_reference :sponsorships, :player, index: true, foreign_key: true
    add_reference :sponsorships, :sponsor, index: true, foreign_key: true
  end
end
