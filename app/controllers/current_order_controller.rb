class CurrentOrderController < ApplicationController
  def create
    @current_order = CurrentOrder.new(current_order_params)
    @order = Order.find(params[:order_id])
  end

  private

  def current_order_params
    params.require(:current_order).permit(:quantity, :order_id, :item_id, :item_price)
  end
end
