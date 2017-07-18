class RemoveReferencesFromPlayer < ActiveRecord::Migration
  def change
    remove_reference :players, :team, index: true, foreign_key: true
  end
end
