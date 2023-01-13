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

ActiveRecord::Schema[7.0].define(version: 2023_01_13_135650) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.float "field_price"
    t.string "teacher_price"
    t.float "discount"
    t.float "total_price"
    t.string "promo_code"
    t.string "notes"
    t.string "status"
    t.string "payment_method"
    t.string "payment_status"
    t.bigint "player_id", null: false
    t.bigint "teacher_id", null: false
    t.bigint "field_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_bookings_on_field_id"
    t.index ["player_id"], name: "index_bookings_on_player_id"
    t.index ["teacher_id"], name: "index_bookings_on_teacher_id"
  end

  create_table "club_features", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "feature_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_features_on_club_id"
    t.index ["feature_id"], name: "index_club_features_on_feature_id"
  end

  create_table "club_players", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_players_on_club_id"
    t.index ["player_id"], name: "index_club_players_on_player_id"
  end

  create_table "club_teachers", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_teachers_on_club_id"
    t.index ["teacher_id"], name: "index_club_teachers_on_teacher_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "price_point"
    t.string "description"
    t.string "phone_number"
    t.string "website"
    t.string "location"
    t.string "payment_policy"
    t.string "cancellation_policy"
    t.string "type", default: "Club", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clubs_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_sports", force: :cascade do |t|
    t.bigint "field_id", null: false
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_field_sports_on_field_id"
    t.index ["sport_id"], name: "index_field_sports_on_sport_id"
  end

  create_table "field_types", force: :cascade do |t|
    t.bigint "field_id", null: false
    t.bigint "type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_field_types_on_field_id"
    t.index ["type_id"], name: "index_field_types_on_type_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "indoor_outdoor"
    t.integer "capacity"
    t.integer "price_per_hour"
    t.bigint "club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_fields_on_club_id"
  end

  create_table "player_badges", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "badge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["badge_id"], name: "index_player_badges_on_badge_id"
    t.index ["player_id"], name: "index_player_badges_on_player_id"
  end

  create_table "player_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_sports", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_sports_on_player_id"
    t.index ["sport_id"], name: "index_player_sports_on_sport_id"
  end

  create_table "player_teachers", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_teachers_on_player_id"
    t.index ["teacher_id"], name: "index_player_teachers_on_teacher_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.integer "age"
    t.string "location"
    t.integer "bookings_count"
    t.string "phone_number"
    t.string "type", default: "Player", null: false
    t.bigint "player_level_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_level_id"], name: "index_players_on_player_level_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "review"
    t.bigint "player_id", null: false
    t.bigint "club_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["club_id"], name: "index_reviews_on_club_id"
    t.index ["player_id"], name: "index_reviews_on_player_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_sports", force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_teacher_sports_on_sport_id"
    t.index ["teacher_id"], name: "index_teacher_sports_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.integer "age"
    t.string "location"
    t.integer "bookings_count"
    t.string "phone_number"
    t.string "description"
    t.string "payment_policy"
    t.string "cancellation_policy"
    t.integer "price_per_hour"
    t.string "type", default: "Teacher", null: false
    t.bigint "teacher_level_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_level_id"], name: "index_teachers_on_teacher_level_id"
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "fields"
  add_foreign_key "bookings", "players"
  add_foreign_key "bookings", "teachers"
  add_foreign_key "club_features", "clubs"
  add_foreign_key "club_features", "features"
  add_foreign_key "club_players", "clubs"
  add_foreign_key "club_players", "players"
  add_foreign_key "club_teachers", "clubs"
  add_foreign_key "club_teachers", "teachers"
  add_foreign_key "clubs", "users"
  add_foreign_key "field_sports", "fields"
  add_foreign_key "field_sports", "sports"
  add_foreign_key "field_types", "fields"
  add_foreign_key "field_types", "types"
  add_foreign_key "fields", "clubs"
  add_foreign_key "player_badges", "badges"
  add_foreign_key "player_badges", "players"
  add_foreign_key "player_sports", "players"
  add_foreign_key "player_sports", "sports"
  add_foreign_key "player_teachers", "players"
  add_foreign_key "player_teachers", "teachers"
  add_foreign_key "players", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "clubs"
  add_foreign_key "reviews", "players"
  add_foreign_key "teacher_sports", "sports"
  add_foreign_key "teacher_sports", "teachers"
  add_foreign_key "teachers", "users"
end
