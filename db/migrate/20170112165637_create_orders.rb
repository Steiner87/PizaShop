class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    	create_table :orders do |t|
        t.string  :name
        t.string  :phone
        t.string  :email
        t.string  :address
        t.string  :orders_input

        t.timestamps
		end
  end
end
