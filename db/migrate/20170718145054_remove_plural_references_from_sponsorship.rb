class RemovePluralReferencesFromSponsorship < ActiveRecord::Migration
  def change
    remove_reference :sponsorships, :players, index: true, foreign_key: true
    remove_reference :sponsorships, :sponsors, index: true, foreign_key: true
  end
end
