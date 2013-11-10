class AddAncestryToTreeViews < ActiveRecord::Migration
  def change
    add_column :tree_views, :ancestry, :string
    add_index :tree_views, :ancestry
  end
end
