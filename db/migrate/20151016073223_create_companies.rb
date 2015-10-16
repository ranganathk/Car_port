class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
