class CreatePicks < ActiveRecord::Migration[6.1]
  def change
    create_table :picks do |t|
      t.integer :user_id
      t.string :p_title
      t.string :p_link
      t.string :p_source
      t.string :p_video
      t.string :p_hashtag
      t.string :p_image
      t.text :p_description
      t.decimal :p_is_price
      t.decimal :p_was_price

      t.string :p_spare_01
      t.string :p_spare_02
      t.string :p_spare_03
      t.string :p_spare_04
      t.string :p_spare_05
      t.string :p_spare_06
      t.string :p_spare_07
      t.string :p_spare_08
      t.string :p_spare_09
      t.string :p_spare_10
      t.string :p_spare_11
      t.string :p_spare_12
      t.string :p_spare_13
      t.string :p_spare_14
      t.string :p_spare_15
      
      t.text :p_spare_31
      t.text :p_spare_32
      t.text :p_spare_33
      t.text :p_spare_34
      t.text :p_spare_35
      
      t.decimal :p_spare_41
      t.decimal :p_spare_42
      t.decimal :p_spare_43
      t.decimal :p_spare_44
      t.decimal :p_spare_45
      
      t.integer :p_spare_56
      t.integer :p_spare_57
      t.integer :p_spare_58
      t.integer :p_spare_59
      t.integer :p_spare_60

      t.float :p_spare_61
      t.float :p_spare_62
      t.float :p_spare_63
      t.float :p_spare_64
      t.float :p_spare_65

      t.datetime :p_spare_66
      t.datetime :p_spare_67
      t.datetime :p_spare_68
      t.datetime :p_spare_69
      t.datetime :p_spare_70

      t.date :p_spare_71
      t.date :p_spare_72
      t.date :p_spare_73
      t.date :p_spare_74
      t.date :p_spare_75

      t.timestamps
    end
  end
end
