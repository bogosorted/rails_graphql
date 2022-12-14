class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :type
      t.integer :power
      t.integer :life

      t.timestamps
    end
  end
end
