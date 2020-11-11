class CreateAreaTable < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.references :sport, foreign_key: true
      t.string :area_name
      t.string :difficulty_level
      t.float :popularity_rating
      t.text :description  
    end
  end
end
