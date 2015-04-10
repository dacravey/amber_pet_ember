class AddPhotoToPets < ActiveRecord::Migration
  def change
    add_attachment :pets, :avatar
  end
end
