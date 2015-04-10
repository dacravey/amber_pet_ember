class AddColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :specie_id, :integer
  end
end
