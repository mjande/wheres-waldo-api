class CreatePhotographs < ActiveRecord::Migration[7.0]
  def change
    create_table :photographs do |t|
      t.string :name

      t.timestamps
    end
  end
end
