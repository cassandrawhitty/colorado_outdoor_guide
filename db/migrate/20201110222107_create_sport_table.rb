class CreateSportTable < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.references :area, foreign_key: true
      t.references :user, foreign_key: true  
      t.string :name
      t.string :equipment
    end
  end
end
