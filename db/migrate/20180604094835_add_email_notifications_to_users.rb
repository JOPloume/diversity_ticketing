class AddEmailNotificationsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :country_email_notifications, :boolean, default: false
  end
end
