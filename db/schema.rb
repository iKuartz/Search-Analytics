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

ActiveRecord::Schema[7.0].define(version: 20_221_206_144_329) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'article_weights', force: :cascade do |t|
    t.integer 'weight'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.bigint 'article_id'
    t.index ['article_id'], name: 'index_article_weights_on_article_id'
    t.index ['user_id'], name: 'index_article_weights_on_user_id'
  end

  create_table 'articles', force: :cascade do |t|
    t.string 'title'
    t.integer 'relevance'
    t.string 'text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.bigint 'theme_id'
    t.index ['theme_id'], name: 'index_articles_on_theme_id'
    t.index ['user_id'], name: 'index_articles_on_user_id'
  end

  create_table 'theme_weights', force: :cascade do |t|
    t.integer 'weight'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id'
    t.bigint 'theme_id'
    t.index ['theme_id'], name: 'index_theme_weights_on_theme_id'
    t.index ['user_id'], name: 'index_theme_weights_on_user_id'
  end

  create_table 'themes', force: :cascade do |t|
    t.string 'theme'
    t.integer 'relevance'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'password'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'article_weights', 'articles'
  add_foreign_key 'article_weights', 'users'
  add_foreign_key 'articles', 'themes'
  add_foreign_key 'articles', 'users'
  add_foreign_key 'theme_weights', 'themes'
  add_foreign_key 'theme_weights', 'users'
end
