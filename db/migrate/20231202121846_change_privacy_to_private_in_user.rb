class ChangePrivacyToPrivateInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :privacy, :private

  end
end
