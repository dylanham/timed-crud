class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :size
      t.string :first_topping
      t.string :second_topping
      t.string :third_topping
      t.integer :cost

      t.timestamps null: false
    end
  end
end
