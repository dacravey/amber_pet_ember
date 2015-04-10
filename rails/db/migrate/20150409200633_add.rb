class Add < ActiveRecord::Migration
  def change
    add_attachment :pets, :avatar
  end
end
