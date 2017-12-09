class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.text :body
      t.string :noteable_type
      t.integer :noteable_id

      t.timestamps
    end
    add_index :notes, [:noteable_id, :noteable_type]
  end
end
