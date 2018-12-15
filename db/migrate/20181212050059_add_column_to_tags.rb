class AddColumnToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :icon, :string
    add_column :tags, :css_class, :string
  end
end
