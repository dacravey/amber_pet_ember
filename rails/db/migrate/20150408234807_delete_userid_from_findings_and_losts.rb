class DeleteUseridFromFindingsAndLosts < ActiveRecord::Migration
  def change
      remove_column :findings, :user_id
      remove_column :losts, :user_id
  end
end
