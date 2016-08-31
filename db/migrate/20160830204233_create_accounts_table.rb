class CreateAccountsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :accounts, id: false do |t|
      t.primary_key :account_id

      t.integer :advertiser_id
      t.string  :name
      t.string  :description
      t.string  :currency
      t.string  :timezone
    end
  end

  def down
    drop_table :accounts
  end
end
