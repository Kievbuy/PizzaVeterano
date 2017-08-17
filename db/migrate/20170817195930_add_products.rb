class AddProducts < ActiveRecord::Migration[5.1]
  def change
    Product.create(:title => 'Havaiian',
                   :description => 'This pizza from Hawaii',
                   :price => 120,
                   :size => 30,
                   :is_spicy => false,
                   :is_veg => false,
                   :is_best_offer => false,
                   :path_to_image => '/img/hawaii.png')


    Product.create(:title => 'Peperoni',
                   :description => 'Testy Peperoni pizza',
                   :price => 135,
                   :size => 30,
                   :is_spicy => true,
                   :is_veg => false,
                   :is_best_offer => false,
                   :path_to_image => '/img/peperoni.png')


    Product.create(:title => 'Vegan',
                   :description => 'Testy Vegetarian pizza',
                   :price => 150,
                   :size => 30,
                   :is_spicy => false,
                   :is_veg => true,
                   :is_best_offer => false,
                   :path_to_image => '/img/vegan.png')

  end
end
