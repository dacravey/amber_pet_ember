class RenameSpecieInSpeciesTable < ActiveRecord::Migration
  def change
    remove_column :species, :specie
    add_column :species, :name, :integer
  end
end
