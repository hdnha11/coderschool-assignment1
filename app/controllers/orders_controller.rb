class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @item = MenuItem.find(params[:menu_item])
    @order = Order.new
    @order.delivery_cost = 20000
    @order.total_cost = @order.delivery_cost + @item.price
  end

  def create
    @item = MenuItem.find(params[:menu_item_id]);
    @order = Order.new(order_params)
    @order.delivery_cost = 20000
    @order.total_cost = @order.delivery_cost + @item.price
    @order.menu_item = @item

    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:customer_name, :phone_number, :address)
  end
end
