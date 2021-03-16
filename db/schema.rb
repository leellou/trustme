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

ActiveRecord::Schema.define(version: 2021_03_16_144436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "game_movies", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_movies_on_game_id"
    t.index ["movie_id"], name: "index_game_movies_on_movie_id"
  end

  create_table "game_providers", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "provider_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_game_providers_on_game_id"
    t.index ["provider_id"], name: "index_game_providers_on_provider_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "token"
    t.boolean "genre"
    t.boolean "year"
    t.boolean "original_language"
    t.boolean "vote_average"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "provider_id"
    t.boolean "runtime"
    t.index ["provider_id"], name: "index_games_on_provider_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "genre_movies", force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genre_id"], name: "index_genre_movies_on_genre_id"
    t.index ["movie_id"], name: "index_genre_movies_on_movie_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tmdb_id"
  end

  create_table "movie_providers", force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_movie_providers_on_movie_id"
    t.index ["provider_id"], name: "index_movie_providers_on_provider_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.integer "vote_average"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "runtime"
    t.text "overview"
    t.bigint "original_language_id"
    t.bigint "game_id"
    t.string "poster"
    t.index ["game_id"], name: "index_movies_on_game_id"
    t.index ["original_language_id"], name: "index_movies_on_original_language_id"
  end

  create_table "original_languages", force: :cascade do |t|
    t.string "iso_639_1"
    t.string "english_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participations", force: :cascade do |t|
    t.string "year"
    t.integer "vote_average"
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "runtime"
    t.bigint "genre_id"
    t.bigint "original_language_id"
    t.index ["game_id"], name: "index_participations_on_game_id"
    t.index ["genre_id"], name: "index_participations_on_genre_id"
    t.index ["original_language_id"], name: "index_participations_on_original_language_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tmdb_id"
    t.string "logo"
  end

  create_table "user_providers", force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["provider_id"], name: "index_user_providers_on_provider_id"
    t.index ["user_id"], name: "index_user_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "game_movies", "games"
  add_foreign_key "game_movies", "movies"
  add_foreign_key "game_providers", "games"
  add_foreign_key "game_providers", "providers"
  add_foreign_key "games", "providers"
  add_foreign_key "games", "users"
  add_foreign_key "genre_movies", "genres"
  add_foreign_key "genre_movies", "movies"
  add_foreign_key "movie_providers", "movies"
  add_foreign_key "movie_providers", "providers"
  add_foreign_key "movies", "games"
  add_foreign_key "movies", "original_languages"
  add_foreign_key "participations", "games"
  add_foreign_key "participations", "genres"
  add_foreign_key "participations", "original_languages"
  add_foreign_key "participations", "users"
  add_foreign_key "user_providers", "providers"
  add_foreign_key "user_providers", "users"
end
