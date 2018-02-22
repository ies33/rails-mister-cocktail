class AddNameToDoses < ActiveRecord::Migration[5.1]
  def change
    add_column :doses, :dose, :string, presence: true
    add_reference :doses, :ingredient, foreign_key: true
    add_reference :doses, :cocktail, foreign_key: true

  end
end
