class AddProducts < ActiveRecord::Migration[5.0]
  def change
    Product.create  :title => 'Havaiian', :description =>'This is hawaian pizza', :price => 200, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_img => '/img/pizza01.jpg'

    Product.create  :title => 'Kozazka', :description =>'This is Kozazkan pizza', :price => 210, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_img => '/img/pizza02.jpg'

    Product.create  :title => 'Ohotnichja', :description =>'This is Ohotnichja pizza', :price => 220, :size => 30, :is_spicy => false, :is_veg => false, :is_best_offer => false, :path_to_img => '/img/pizza03.jpg'

  end
end
