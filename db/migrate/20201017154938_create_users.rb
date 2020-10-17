class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :access_token
      t.string :email
      t.string :name
      t.string :picture
      t.string :locale
      t.string :provider

      t.timestamps
    end
  end
end
