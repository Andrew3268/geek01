# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_16_051202) do

  create_table "categories", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.boolean "display_in_navbar", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "featureds", force: :cascade do |t|
    t.integer "user_id"
    t.string "f_title"
    t.string "f_link"
    t.string "f_source"
    t.string "f_video"
    t.string "f_hashtag"
    t.string "f_image"
    t.text "f_description"
    t.decimal "f_is_price"
    t.decimal "f_was_price"
    t.string "f_spare_01"
    t.string "f_spare_02"
    t.string "f_spare_03"
    t.string "f_spare_04"
    t.string "f_spare_05"
    t.string "f_spare_06"
    t.string "f_spare_07"
    t.string "f_spare_08"
    t.string "f_spare_09"
    t.string "f_spare_10"
    t.string "f_spare_11"
    t.string "f_spare_12"
    t.string "f_spare_13"
    t.string "f_spare_14"
    t.string "f_spare_15"
    t.string "f_spare_16"
    t.string "f_spare_17"
    t.string "f_spare_18"
    t.string "f_spare_19"
    t.string "f_spare_20"
    t.string "f_spare_21"
    t.string "f_spare_22"
    t.string "f_spare_23"
    t.string "f_spare_24"
    t.string "f_spare_25"
    t.string "f_spare_26"
    t.string "f_spare_27"
    t.string "f_spare_28"
    t.string "f_spare_29"
    t.string "f_spare_30"
    t.text "f_spare_31"
    t.text "f_spare_32"
    t.text "f_spare_33"
    t.text "f_spare_34"
    t.text "f_spare_35"
    t.text "f_spare_36"
    t.text "f_spare_37"
    t.text "f_spare_38"
    t.text "f_spare_39"
    t.text "f_spare_40"
    t.decimal "f_spare_41"
    t.decimal "f_spare_42"
    t.decimal "f_spare_43"
    t.decimal "f_spare_44"
    t.decimal "f_spare_45"
    t.decimal "f_spare_46"
    t.decimal "f_spare_47"
    t.decimal "f_spare_48"
    t.decimal "f_spare_49"
    t.decimal "f_spare_50"
    t.decimal "f_spare_51"
    t.decimal "f_spare_52"
    t.decimal "f_spare_53"
    t.decimal "f_spare_54"
    t.decimal "f_spare_55"
    t.integer "f_spare_56"
    t.integer "f_spare_57"
    t.integer "f_spare_58"
    t.integer "f_spare_59"
    t.integer "f_spare_60"
    t.float "f_spare_61"
    t.float "f_spare_62"
    t.float "f_spare_63"
    t.float "f_spare_64"
    t.float "f_spare_65"
    t.datetime "f_spare_66"
    t.datetime "f_spare_67"
    t.datetime "f_spare_68"
    t.datetime "f_spare_69"
    t.datetime "f_spare_70"
    t.date "f_spare_71"
    t.date "f_spare_72"
    t.date "f_spare_73"
    t.date "f_spare_74"
    t.date "f_spare_75"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "featureds_tags", id: false, force: :cascade do |t|
    t.integer "featured_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["featured_id"], name: "index_featureds_tags_on_featured_id"
    t.index ["tag_id"], name: "index_featureds_tags_on_tag_id"
  end

  create_table "picks", force: :cascade do |t|
    t.integer "user_id"
    t.string "p_title"
    t.string "p_link"
    t.string "p_source"
    t.string "p_hashtag"
    t.string "p_image"
    t.text "p_description"
    t.decimal "p_is_price"
    t.decimal "p_was_price"
    t.string "p_spare_01"
    t.string "p_spare_02"
    t.string "p_spare_03"
    t.string "p_spare_04"
    t.string "p_spare_05"
    t.string "p_spare_06"
    t.string "p_spare_07"
    t.string "p_spare_08"
    t.string "p_spare_09"
    t.string "p_spare_10"
    t.string "p_spare_11"
    t.string "p_spare_12"
    t.string "p_spare_13"
    t.string "p_spare_14"
    t.string "p_spare_15"
    t.text "p_spare_31"
    t.text "p_spare_32"
    t.text "p_spare_33"
    t.text "p_spare_34"
    t.text "p_spare_35"
    t.decimal "p_spare_41"
    t.decimal "p_spare_42"
    t.decimal "p_spare_43"
    t.decimal "p_spare_44"
    t.decimal "p_spare_45"
    t.integer "p_spare_56"
    t.integer "p_spare_57"
    t.integer "p_spare_58"
    t.integer "p_spare_59"
    t.integer "p_spare_60"
    t.float "p_spare_61"
    t.float "p_spare_62"
    t.float "p_spare_63"
    t.float "p_spare_64"
    t.float "p_spare_65"
    t.datetime "p_spare_66"
    t.datetime "p_spare_67"
    t.datetime "p_spare_68"
    t.datetime "p_spare_69"
    t.datetime "p_spare_70"
    t.date "p_spare_71"
    t.date "p_spare_72"
    t.date "p_spare_73"
    t.date "p_spare_74"
    t.date "p_spare_75"
    t.integer "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_picks_on_category_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "s_title"
    t.string "s_link"
    t.string "s_source"
    t.string "s_video"
    t.string "s_hashtag"
    t.string "s_rocket"
    t.string "s_image"
    t.text "s_description"
    t.float "s_is_price"
    t.float "s_was_price"
    t.float "s_pct"
    t.integer "user_id", null: false
    t.string "s_spare_01"
    t.string "s_spare_02"
    t.string "s_spare_03"
    t.string "s_spare_04"
    t.string "s_spare_05"
    t.string "s_spare_06"
    t.string "s_spare_07"
    t.string "s_spare_08"
    t.string "s_spare_09"
    t.string "s_spare_10"
    t.string "s_spare_11"
    t.string "s_spare_12"
    t.string "s_spare_13"
    t.string "s_spare_14"
    t.string "s_spare_15"
    t.string "s_spare_16"
    t.string "s_spare_17"
    t.string "s_spare_18"
    t.string "s_spare_19"
    t.string "s_spare_20"
    t.string "s_spare_21"
    t.string "s_spare_22"
    t.string "s_spare_23"
    t.string "s_spare_24"
    t.string "s_spare_25"
    t.string "s_spare_26"
    t.string "s_spare_27"
    t.string "s_spare_28"
    t.string "s_spare_29"
    t.string "s_spare_30"
    t.text "s_spare_31"
    t.text "s_spare_32"
    t.text "s_spare_33"
    t.text "s_spare_34"
    t.text "s_spare_35"
    t.text "s_spare_36"
    t.text "s_spare_37"
    t.text "s_spare_38"
    t.text "s_spare_39"
    t.text "s_spare_40"
    t.float "s_spare_41"
    t.float "s_spare_42"
    t.float "s_spare_43"
    t.float "s_spare_44"
    t.float "s_spare_45"
    t.float "s_spare_46"
    t.float "s_spare_47"
    t.float "s_spare_48"
    t.float "s_spare_49"
    t.float "s_spare_50"
    t.float "s_spare_51"
    t.float "s_spare_52"
    t.float "s_spare_53"
    t.float "s_spare_54"
    t.float "s_spare_55"
    t.integer "s_spare_56"
    t.integer "s_spare_57"
    t.integer "s_spare_58"
    t.integer "s_spare_59"
    t.integer "s_spare_60"
    t.decimal "s_spare_61"
    t.decimal "s_spare_62"
    t.decimal "s_spare_63"
    t.decimal "s_spare_64"
    t.decimal "s_spare_65"
    t.datetime "s_spare_66"
    t.datetime "s_spare_67"
    t.datetime "s_spare_68"
    t.datetime "s_spare_69"
    t.datetime "s_spare_70"
    t.date "s_spare_71"
    t.date "s_spare_72"
    t.date "s_spare_73"
    t.date "s_spare_74"
    t.date "s_spare_75"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "sales_tags", id: false, force: :cascade do |t|
    t.integer "sale_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sale_id"], name: "index_sales_tags_on_sale_id"
    t.index ["tag_id"], name: "index_sales_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "featureds_tags", "featureds"
  add_foreign_key "featureds_tags", "tags"
  add_foreign_key "picks", "categories"
  add_foreign_key "sales", "users"
  add_foreign_key "sales_tags", "sales"
  add_foreign_key "sales_tags", "tags"
end
