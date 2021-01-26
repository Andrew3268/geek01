class CreateSalesTags < ActiveRecord::Migration[6.1]
  def change
    create_table :sales_tags, :id => false do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps
    end
  end
end
