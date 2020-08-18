class AddColumnToTool < ActiveRecord::Migration[6.0]
  def change
    add_column :tools, :category, :string
  end
end
