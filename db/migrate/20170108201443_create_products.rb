class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    	create_table :products do |t|
        t.string  :title
        t.decimal  :size
        t.decimal  :price
        t.text     :description
        t.boolean  :is_spicy
        t.boolean :is_veg
        t.boolean :is_best_offer
        t.string :path_to_img
        t.timestamps
		end
  end
end
