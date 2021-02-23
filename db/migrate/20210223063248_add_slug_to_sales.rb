class AddSlugToSales < ActiveRecord::Migration[6.1]
  def change
    add_column :sales, :slug, :string
    add_index :sales, :slug, unique: true
  end
end
