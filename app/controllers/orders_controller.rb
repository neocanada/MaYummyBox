class OrdersController < ApplicationController
  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end

  def create
    @yummybox = Yummybox.find(params[:yummybox_id])
    order = Order.create!(yummybox_sku: @yummybox.sku, amount: @yummybox.price, state: 'pending')

    redirect_to new_order_payment_path(order)
  end
end
