class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :upper_bound
      t.integer :lower_bound
      t.integer :left_bound
      t.integer :right_bound

      t.timestamps
    end
  end
end
