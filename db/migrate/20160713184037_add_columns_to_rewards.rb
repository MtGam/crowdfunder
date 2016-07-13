class AddColumnsToRewards < ActiveRecord::Migration[5.0]
  def change
    add_column :rewards, :name, :string
    add_column :rewards, :description, :text
    add_column :rewards, :amount, :integer
  end
end
