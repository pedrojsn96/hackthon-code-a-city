class RemoveEmailToCourse < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :email
    remove_column :courses, :encrypted_password
    remove_column :courses, :reset_password_token
    remove_column :courses, :reset_password_sent_at
    remove_column :courses, :remember_created_at
  end
end
