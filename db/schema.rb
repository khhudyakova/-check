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

ActiveRecord::Schema[7.2].define(version: 2024_10_06_164006) do
  create_table "chapters", force: :cascade do |t|
    t.string "chname"
    t.string "chnotes"
    t.text "body"
    t.integer "story_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_chapters_on_story_id"
  end

  create_table "descriptions", force: :cascade do |t|
    t.text "body"
    t.integer "story_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_descriptions_on_story_id"
  end

  create_table "forks", force: :cascade do |t|
    t.string "title"
    t.integer "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_forks_on_chapter_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "author"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.integer "story_id", null: false
    t.integer "fork_id", null: false
    t.integer "theme_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fork_id"], name: "index_tags_on_fork_id"
    t.index ["story_id"], name: "index_tags_on_story_id"
    t.index ["theme_id"], name: "index_tags_on_theme_id"
  end

  add_foreign_key "chapters", "stories"
  add_foreign_key "descriptions", "stories"
  add_foreign_key "forks", "chapters"
  add_foreign_key "tags", "forks"
  add_foreign_key "tags", "stories"
  add_foreign_key "tags", "themes"
end
