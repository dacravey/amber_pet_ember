class AddLostsTable < ActiveRecord::Migration
  def change
    create_table :losts do |t|
      t.column :date, :string
      t.column :address, :string
    end
  end
end
