class RenameDoseToDescription < ActiveRecord::Migration[5.1]
  def change
    rename_column :doses, :dose, :description
  end
end
