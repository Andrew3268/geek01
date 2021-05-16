class CreateThemesTags < ActiveRecord::Migration[6.1]
  def change
    create_table :themes_tags, :id => false  do |t|
      t.references :theme, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps
    end
  end
end
