class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.string :sport
      t.integer :minbet
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
