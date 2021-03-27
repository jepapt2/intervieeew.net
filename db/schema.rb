# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_27_153231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "title", limit: 50, null: false
    t.string "answerer", limit: 10
    t.text "overview"
    t.string "content_1"
    t.string "content_2"
    t.string "content_3"
    t.string "content_4"
    t.string "content_5"
    t.string "content_6"
    t.string "content_7"
    t.string "content_8"
    t.string "content_9"
    t.string "content_10"
    t.string "content_11"
    t.string "content_12"
    t.string "content_13"
    t.string "content_14"
    t.string "content_15"
    t.string "content_16"
    t.string "content_17"
    t.string "content_18"
    t.string "content_19"
    t.string "content_20"
    t.string "content_21"
    t.string "content_22"
    t.string "content_23"
    t.string "content_24"
    t.string "content_25"
    t.string "content_26"
    t.string "content_27"
    t.string "content_28"
    t.string "content_29"
    t.string "content_30"
    t.string "content_31"
    t.string "content_32"
    t.string "content_33"
    t.string "content_34"
    t.string "content_35"
    t.string "content_36"
    t.string "content_37"
    t.string "content_38"
    t.string "content_39"
    t.string "content_40"
    t.string "content_41"
    t.string "content_42"
    t.string "content_43"
    t.string "content_44"
    t.string "content_45"
    t.string "content_46"
    t.string "content_47"
    t.string "content_48"
    t.string "content_49"
    t.string "content_50"
    t.string "content_51"
    t.string "content_52"
    t.string "content_53"
    t.string "content_54"
    t.string "content_55"
    t.string "content_56"
    t.string "content_57"
    t.string "content_58"
    t.string "content_59"
    t.string "content_60"
    t.string "content_61"
    t.string "content_62"
    t.string "content_63"
    t.string "content_64"
    t.string "content_65"
    t.string "content_66"
    t.string "content_67"
    t.string "content_68"
    t.string "content_69"
    t.string "content_70"
    t.string "content_71"
    t.string "content_72"
    t.string "content_73"
    t.string "content_74"
    t.string "content_75"
    t.string "content_76"
    t.string "content_77"
    t.string "content_78"
    t.string "content_79"
    t.string "content_80"
    t.string "content_81"
    t.string "content_82"
    t.string "content_83"
    t.string "content_84"
    t.string "content_85"
    t.string "content_86"
    t.string "content_87"
    t.string "content_88"
    t.string "content_89"
    t.string "content_90"
    t.string "content_91"
    t.string "content_92"
    t.string "content_93"
    t.string "content_94"
    t.string "content_95"
    t.string "content_96"
    t.string "content_97"
    t.string "content_98"
    t.string "content_99"
    t.string "content_100"
    t.string "head_1", limit: 20
    t.string "head_2", limit: 20
    t.string "head_3", limit: 20
    t.string "head_4", limit: 20
    t.string "head_5", limit: 20
    t.string "head_6", limit: 20
    t.string "head_7", limit: 20
    t.string "head_8", limit: 20
    t.string "head_9", limit: 20
    t.string "head_10", limit: 20
    t.string "head_11", limit: 20
    t.string "head_12", limit: 20
    t.string "head_13", limit: 20
    t.string "head_14", limit: 20
    t.string "head_15", limit: 20
    t.string "head_16", limit: 20
    t.string "head_17", limit: 20
    t.string "head_18", limit: 20
    t.string "head_19", limit: 20
    t.string "head_20", limit: 20
    t.string "head_21", limit: 20
    t.string "head_22", limit: 20
    t.string "head_23", limit: 20
    t.string "head_24", limit: 20
    t.string "head_25", limit: 20
    t.string "head_26", limit: 20
    t.string "head_27", limit: 20
    t.string "head_28", limit: 20
    t.string "head_29", limit: 20
    t.string "head_30", limit: 20
    t.string "head_31", limit: 20
    t.string "head_32", limit: 20
    t.string "head_33", limit: 20
    t.string "head_34", limit: 20
    t.string "head_35", limit: 20
    t.string "head_36", limit: 20
    t.string "head_37", limit: 20
    t.string "head_38", limit: 20
    t.string "head_39", limit: 20
    t.string "head_40", limit: 20
    t.string "head_41", limit: 20
    t.string "head_42", limit: 20
    t.string "head_43", limit: 20
    t.string "head_44", limit: 20
    t.string "head_45", limit: 20
    t.string "head_46", limit: 20
    t.string "head_47", limit: 20
    t.string "head_48", limit: 20
    t.string "head_49", limit: 20
    t.string "head_50", limit: 20
    t.string "head_51", limit: 20
    t.string "head_52", limit: 20
    t.string "head_53", limit: 20
    t.string "head_54", limit: 20
    t.string "head_55", limit: 20
    t.string "head_56", limit: 20
    t.string "head_57", limit: 20
    t.string "head_58", limit: 20
    t.string "head_59", limit: 20
    t.string "head_60", limit: 20
    t.string "head_61", limit: 20
    t.string "head_62", limit: 20
    t.string "head_63", limit: 20
    t.string "head_64", limit: 20
    t.string "head_65", limit: 20
    t.string "head_66", limit: 20
    t.string "head_67", limit: 20
    t.string "head_68", limit: 20
    t.string "head_69", limit: 20
    t.string "head_70", limit: 20
    t.string "head_71", limit: 20
    t.string "head_72", limit: 20
    t.string "head_73", limit: 20
    t.string "head_74", limit: 20
    t.string "head_75", limit: 20
    t.string "head_76", limit: 20
    t.string "head_77", limit: 20
    t.string "head_78", limit: 20
    t.string "head_79", limit: 20
    t.string "head_80", limit: 20
    t.string "head_81", limit: 20
    t.string "head_82", limit: 20
    t.string "head_83", limit: 20
    t.string "head_84", limit: 20
    t.string "head_85", limit: 20
    t.string "head_86", limit: 20
    t.string "head_87", limit: 20
    t.string "head_88", limit: 20
    t.string "head_89", limit: 20
    t.string "head_90", limit: 20
    t.string "head_91", limit: 20
    t.string "head_92", limit: 20
    t.string "head_93", limit: 20
    t.string "head_94", limit: 20
    t.string "head_95", limit: 20
    t.string "head_96", limit: 20
    t.string "head_97", limit: 20
    t.string "head_98", limit: 20
    t.string "head_99", limit: 20
    t.string "head_100", limit: 20
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "public_uid"
    t.string "select_image"
    t.bigint "question_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_id"], name: "index_favorites_on_answer_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title", null: false
    t.string "content_1", null: false
    t.string "content_2", null: false
    t.string "content_3", null: false
    t.string "content_4"
    t.string "content_5"
    t.string "content_6"
    t.string "content_7"
    t.string "content_8"
    t.string "content_9"
    t.string "content_10"
    t.string "content_11"
    t.string "content_12"
    t.string "content_13"
    t.string "content_14"
    t.string "content_15"
    t.string "content_16"
    t.string "content_17"
    t.string "content_18"
    t.string "content_19"
    t.string "content_20"
    t.string "content_21"
    t.string "content_22"
    t.string "content_23"
    t.string "content_24"
    t.string "content_25"
    t.string "content_26"
    t.string "content_27"
    t.string "content_28"
    t.string "content_29"
    t.string "content_30"
    t.string "content_31"
    t.string "content_32"
    t.string "content_33"
    t.string "content_34"
    t.string "content_35"
    t.string "content_36"
    t.string "content_37"
    t.string "content_38"
    t.string "content_39"
    t.string "content_40"
    t.string "content_41"
    t.string "content_42"
    t.string "content_43"
    t.string "content_44"
    t.string "content_45"
    t.string "content_46"
    t.string "content_47"
    t.string "content_48"
    t.string "content_49"
    t.string "content_50"
    t.string "content_51"
    t.string "content_52"
    t.string "content_53"
    t.string "content_54"
    t.string "content_55"
    t.string "content_56"
    t.string "content_57"
    t.string "content_58"
    t.string "content_59"
    t.string "content_60"
    t.string "content_61"
    t.string "content_62"
    t.string "content_63"
    t.string "content_64"
    t.string "content_65"
    t.string "content_66"
    t.string "content_67"
    t.string "content_68"
    t.string "content_69"
    t.string "content_70"
    t.string "content_71"
    t.string "content_72"
    t.string "content_73"
    t.string "content_74"
    t.string "content_75"
    t.string "content_76"
    t.string "content_77"
    t.string "content_78"
    t.string "content_79"
    t.string "content_80"
    t.string "content_81"
    t.string "content_82"
    t.string "content_83"
    t.string "content_84"
    t.string "content_85"
    t.string "content_86"
    t.string "content_87"
    t.string "content_88"
    t.string "content_89"
    t.string "content_90"
    t.string "content_91"
    t.string "content_92"
    t.string "content_93"
    t.string "content_94"
    t.string "content_95"
    t.string "content_96"
    t.string "content_97"
    t.string "content_98"
    t.string "content_99"
    t.string "content_100"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "public_uid"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name", limit: 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "username", null: false
    t.string "public_uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["public_uid"], name: "index_users_on_public_uid", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "favorites", "answers"
  add_foreign_key "favorites", "users"
  add_foreign_key "questions", "users"
  add_foreign_key "taggings", "tags"
end
