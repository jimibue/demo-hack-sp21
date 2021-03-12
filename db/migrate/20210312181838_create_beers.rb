class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.belongs_to :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
