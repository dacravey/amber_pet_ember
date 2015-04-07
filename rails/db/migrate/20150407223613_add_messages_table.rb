class AddMessagesTable < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string "to"
      t.string "from"
      t.text "body"
    end
  end
end
