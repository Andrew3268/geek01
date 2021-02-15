class CreateFeatureds < ActiveRecord::Migration[6.1]
  def change
    create_table :featureds do |t|
      t.integer :user_id
      t.string :f_title
      t.string :f_link
      t.string :f_source
      t.string :f_video
      t.string :f_hashtag
      t.string :f_image
      t.text :f_description
      t.decimal :f_is_price
      t.decimal :f_was_price

      t.string :f_spare_01
      t.string :f_spare_02
      t.string :f_spare_03
      t.string :f_spare_04
      t.string :f_spare_05
      t.string :f_spare_06
      t.string :f_spare_07
      t.string :f_spare_08
      t.string :f_spare_09
      t.string :f_spare_10
      t.string :f_spare_11
      t.string :f_spare_12
      t.string :f_spare_13
      t.string :f_spare_14
      t.string :f_spare_15
      t.string :f_spare_16
      t.string :f_spare_17
      t.string :f_spare_18
      t.string :f_spare_19
      t.string :f_spare_20
      t.string :f_spare_21
      t.string :f_spare_22
      t.string :f_spare_23
      t.string :f_spare_24
      t.string :f_spare_25
      t.string :f_spare_26
      t.string :f_spare_27
      t.string :f_spare_28
      t.string :f_spare_29
      t.string :f_spare_30

      t.text :f_spare_31
      t.text :f_spare_32
      t.text :f_spare_33
      t.text :f_spare_34
      t.text :f_spare_35
      t.text :f_spare_36
      t.text :f_spare_37
      t.text :f_spare_38
      t.text :f_spare_39
      t.text :f_spare_40

      t.decimal :f_spare_41
      t.decimal :f_spare_42
      t.decimal :f_spare_43
      t.decimal :f_spare_44
      t.decimal :f_spare_45
      t.decimal :f_spare_46
      t.decimal :f_spare_47
      t.decimal :f_spare_48
      t.decimal :f_spare_49
      t.decimal :f_spare_50
      t.decimal :f_spare_51
      t.decimal :f_spare_52
      t.decimal :f_spare_53
      t.decimal :f_spare_54
      t.decimal :f_spare_55

      t.integer :f_spare_56
      t.integer :f_spare_57
      t.integer :f_spare_58
      t.integer :f_spare_59
      t.integer :f_spare_60

      t.float :f_spare_61
      t.float :f_spare_62
      t.float :f_spare_63
      t.float :f_spare_64
      t.float :f_spare_65

      t.datetime :f_spare_66
      t.datetime :f_spare_67
      t.datetime :f_spare_68
      t.datetime :f_spare_69
      t.datetime :f_spare_70

      t.date :f_spare_71
      t.date :f_spare_72
      t.date :f_spare_73
      t.date :f_spare_74
      t.date :f_spare_75
      

      t.timestamps
    end
  end
end
