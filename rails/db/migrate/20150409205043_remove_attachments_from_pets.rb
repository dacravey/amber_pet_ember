class RemoveAttachmentsFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :avatar_content_type
    remove_column :pets, :avatar_file_size
    remove_column :pets, :avatar_updated_at
    remove_column :pets, :avatar_file_name
  end
end
