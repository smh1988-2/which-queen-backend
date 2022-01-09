class CreateQueens < ActiveRecord::Migration[6.1]
  def change
    create_table :queens do |t|
      t.string :name
      t.boolean :winner
      t.boolean :missCongeniality
      t.string :image_url
      t.string :quote
    end
  end
end
