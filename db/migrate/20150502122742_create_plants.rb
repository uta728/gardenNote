class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :name
      t.string :name_en
      t.string :order
      t.string :family
      t.string :genus
      t.string :species
      t.string :category1
      t.string :category2
      t.string :icon
      t.string :seeds_s_c
      t.string :seeds_e_c
      t.string :seeds_s_m
      t.string :seeds_e_m
      t.string :seeds_s_w
      t.string :seeds_e_w
      t.string :planting_s_c
      t.string :planting_e_c
      t.string :planting_s_m
      t.string :planting_e_m
      t.string :planting_s_w
      t.string :planting_e_w
      t.string :harvest_s_c
      t.string :harvest_e_c
      t.string :harvest_s_m
      t.string :harvest_e_m
      t.string :harvest_s_w
      t.string :harvest_e_w
      t.boolean :replant_failure
      t.string :replant_failure_term

      t.timestamps
    end
  end
end
