class CreateCocaColas < ActiveRecord::Migration
  def change
    create_table :coca_colas do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
