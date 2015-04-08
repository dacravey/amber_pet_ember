class AddSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :specie, :string
    end
  end
end
