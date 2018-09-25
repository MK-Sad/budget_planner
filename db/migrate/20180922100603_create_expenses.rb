class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.datetime :date
      t.boolean :active

      t.timestamps
    end
  end
end
