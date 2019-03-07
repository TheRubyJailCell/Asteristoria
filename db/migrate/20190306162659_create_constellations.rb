class CreateConstellations < ActiveRecord::Migration[5.2]
  def change
    create_table :constellations do |t|
      t.string :name
      t.string :scientific_name
      t.string :number_of_stars
      t.string :discovery_date
      t.string :season_of_sight
      t.text :myth
      t.string :image

      t.timestamps
    end
  end
end
