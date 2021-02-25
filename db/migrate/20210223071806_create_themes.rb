class CreateThemes < ActiveRecord::Migration[6.1]
  def change
    create_table :themes do |t|
      t.integer :user_id
      t.string :t_title
      t.string :t_link
      t.string :t_source
      t.string :t_hashtag
      t.string :t_image
      t.text :t_description

      t.string :t_spare_01
      t.string :t_spare_02
      t.string :t_spare_03
      t.string :t_spare_04
      t.string :t_spare_05
      t.string :t_spare_06
      t.string :t_spare_07
      t.string :t_spare_08
      t.string :t_spare_09
      t.string :t_spare_10
      
      t.text :t_spare_31
      t.text :t_spare_32
      t.text :t_spare_33
      t.text :t_spare_34
      t.text :t_spare_35
    
      t.datetime :t_spare_66
      t.datetime :t_spare_67
      
      t.date :t_spare_71
      t.date :t_spare_72
      
      t.timestamps
    end
  end
end
