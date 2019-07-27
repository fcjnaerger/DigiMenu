class OrdersController < ApplicationController

  def show

    @order = Order.last
    @restaurant = @order.table.restaurant
    @items = @restaurant.items
    @table = @order.table

    @menu = @items.where(restaurant_id: @restaurant.id)
    @appetizer = @menu.where(food_category: "food_app")
    @food = @menu.where(food_category: "food_main")
    @drink = @menu.where(food_category: "drink")
    @dessert = @menu.where(food_category: "food_dessert")
  end


  def update
    @order = Order.find(params[:id])
  end


end
