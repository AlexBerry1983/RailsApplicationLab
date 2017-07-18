class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :cost

      t.timestamps null: false
    end
  end
end
