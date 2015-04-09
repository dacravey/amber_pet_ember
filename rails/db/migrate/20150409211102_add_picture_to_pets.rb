class AddPictureToPets < ActiveRecord::Migration
  def change
    add_column :pets, :picture, :string
  end
end
