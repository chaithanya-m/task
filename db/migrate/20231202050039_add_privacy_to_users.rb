class AddPrivacyToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :privacy, :boolean, default: true
  end
end
