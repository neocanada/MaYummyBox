class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :integer
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string
    add_column :users, :address1, :string
    add_column :users, :address2, :string
    add_column :users, :zip, :integer
    add_column :users, :city, :string
    add_column :users, :phone, :integer
  end
end
