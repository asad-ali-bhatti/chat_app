class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.text :message
      t.integer :receiver_id
      t.integer :sender_id

      t.timestamps
    end
    add_index :chats, :receiver_id
    add_index :chats, :sender_id
  end
end
