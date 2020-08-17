class AddNameAndDescriptionToTools < ActiveRecord::Migration[6.0]
  def change
    add_column :tools, :name, :string
    add_column :tools, :description, :string
  end
end
