class DeviseCreateUsers < ActiveRecord::Migration[6.1]
    def change
      create_table :users do |t|
        t.string :email,              null: false, default: ""
        t.string :encrypted_password, null: false, default: ""
          t.string   :reset_password_token
        t.datetime :reset_password_sent_at
  
        t.datetime :remember_created_at
          t.integer  :sign_in_count, default: 0, null: false
        t.datetime :current_sign_in_at
        t.datetime :last_sign_in_at
        t.string   :current_sign_in_ip
        t.string   :last_sign_in_ip
          t.boolean :admin, default: false
          t.string :user_type, null: false, default: "user"
        t.timestamps null: false
      end
  
      add_index :users, :email,                unique: true
      add_index :users, :reset_password_token, unique: true
      add_index :users, :user_type
    end
  end
  