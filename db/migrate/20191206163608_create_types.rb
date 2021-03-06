class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :types do |t|
      t.string :title
      t.text :body
      t.belongs_to :model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
