class CreateTreeViews < ActiveRecord::Migration
  def change
    create_table :tree_views do |t|
      t.string :name

      t.timestamps
    end
  end
end
