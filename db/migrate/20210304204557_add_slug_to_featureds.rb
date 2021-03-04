class AddSlugToFeatureds < ActiveRecord::Migration[6.1]
  def change
    add_column :featureds, :slug, :string
    add_index :featureds, :slug, unique: true
  end
end
