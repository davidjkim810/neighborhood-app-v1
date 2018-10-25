class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :img_url
      t.string :street_address
      t.string :city
      t.string :state
      t.string :password_digest
      t.string :password_confirmation
      t.string :session_token
      t.timestamps
    end
  end
end
