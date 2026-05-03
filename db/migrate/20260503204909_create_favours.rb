class CreateFavours < ActiveRecord::Migration[7.1]
  def change
    create_table :favours do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
