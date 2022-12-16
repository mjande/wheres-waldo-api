class AddAssociationsToCharactersAndScores < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :characters, :photograph
    add_belongs_to :scores, :photograph
  end
end
