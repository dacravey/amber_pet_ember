class AddPetidToFindingsAndLosts < ActiveRecord::Migration
  def change
    add_column :findings, :pet_id, :integer
    add_column :losts, :pet_id, :integer
    add_column :losts, :time, :string
  end
end
