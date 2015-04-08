class AddFindingsTable < ActiveRecord::Migration
  def change
    create_table :findings do |t|
      t.column :date, :string
      t.column :address, :string
      t.column :time, :string
      t.column :user_id, :integer
    end
  end
end
