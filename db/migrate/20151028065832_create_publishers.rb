class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.references :book, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
