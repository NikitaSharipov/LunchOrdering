class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.date = Date.today
    @order.sum_cost(params[:first_dish].to_sym, params[:second_dish].to_sym, params[:drink].to_sym)
    if @order.save
      redirect_to root_path, notice: 'You have added an order'
    else
      redirect_to full_menu_day_menus_path, notice: @order.errors.full_messages.to_s
    end
  end

  private

  def order_params
    params.permit(:first_dish, :second_dish, :drink)
  end
end
