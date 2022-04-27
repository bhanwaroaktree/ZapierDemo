class CreateHookTable < ActiveRecord::Migration[6.0]
  def change
    create_table "hooks", force: :cascade do |t|
      t.bigint "account_id"
      t.bigint "user_id"
      t.string "url"
      t.string "hook_type"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["account_id", "user_id", "hook_type"], name: "index_hooks_on_account_id_and_user_id_and_hook_type"
      t.index ["account_id"], name: "index_hooks_on_account_id"
      t.index ["user_id"], name: "index_hooks_on_user_id"
    end
  end
end
