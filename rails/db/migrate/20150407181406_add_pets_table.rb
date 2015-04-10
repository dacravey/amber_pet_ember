class AddPetsTable < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :age, :integer
      t.column :breed, :string
      t.column :user_id, :integer
      t.column :chip_number, :string
    end
  end
end
