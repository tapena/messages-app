class CreateChatboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :chatboxes do |t|
      t.text :body
      t.references :conversation, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
