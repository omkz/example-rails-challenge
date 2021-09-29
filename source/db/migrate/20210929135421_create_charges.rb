class CreateCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :charges do |t|
      t.datetime :created
      t.boolean :paid
      t.decimal :amount, precision: 8, scale: 2
      t.string :currency
      t.boolean :refunded
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
