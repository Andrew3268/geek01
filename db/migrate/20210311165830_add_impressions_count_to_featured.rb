class AddImpressionsCountToFeatured < ActiveRecord::Migration[6.1]
  def change
    add_column :featureds, :impressions_count, :int
  end
end
