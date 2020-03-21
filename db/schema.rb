# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_09_085130) do

  create_table "genres", force: :cascade do |t|
    t.string "libelle"
  end

  create_table "genres_livres", id: false, force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "livre_id", null: false
    t.index ["genre_id", "livre_id"], name: "index_genres_livres_on_genre_id_and_livre_id"
    t.index ["livre_id", "genre_id"], name: "index_genres_livres_on_livre_id_and_genre_id"
  end

  create_table "livres", force: :cascade do |t|
    t.string "titre"
    t.string "auteur"
    t.string "codebarre"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.string "mail"
    t.string "password_digest"
    t.boolean "confirmed"
    t.string "confirmation_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
